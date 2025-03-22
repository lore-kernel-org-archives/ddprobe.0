Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3802D18D643
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742662795; cv=none; b=eFUXLKAwLXfNhL47mLiXY/bw5EY5oS/TW6uUG8zvGMcaV1qPpwgLNvBE+e4tcMuZb6rvoTsigA6BGwIULZqnq4truZtNRO+pS4ttzWn4tChSbGsF9c++gPMZCFCMZb3HIXLE0+YyRejsyoec4Bi0cUiW/5CZ4yINFzLwcq/jqno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742662795; c=relaxed/simple;
	bh=7T8Z1nKn4M2J8x749Kbu2D9lZ7WHKh84u0HHirtKeMo=;
	h=To:Subject:From:Message-Id:Date; b=qZhY7LmHEe9ec1jDJ9dXCNw1WU8hvQiBzOXpCHPyF7XSPVzuETNhtHYe99Ieu83kvm1D580BN5BYSmCRXtBkky7/W4tvr8F9RYY5w4EjXtly6Cs5uhaMPgqKt8QRajWdmI2wYRj6tr/SODIp68kTlkh+1VFDs5q3raBOg4HTWzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6nKl+s0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6nKl+s0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD678C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742662793;
	bh=7T8Z1nKn4M2J8x749Kbu2D9lZ7WHKh84u0HHirtKeMo=;
	h=To:Subject:From:Date:From;
	b=C6nKl+s0rz4X7Nz2ZXnIvYgpOlZpQ2sKIX6PbK+qHuLvjrHbceIUC8vx4B6zo5/Kj
	 MRvjKh3PcTsg4NrwSaQXMebe1A/rKOjhQJnNOehTekWWaveXRyy8iwD1qn9oL6reIi
	 5Uc6UjGoZ9m70iJnmGlE92WCTjUuLR0wkJOmd68amgh4SXHibt31qkYaNlfD+brByr
	 xkLfTMKZRaKBnrIXQEkpT2UVgXP8qYzGA3eg458XPH2k2KKTY81nHmC1bdTMtntWMI
	 Kf+swzML9a1AYOixx0CxfAceYfuoAPD3pE6+7sigIaty2LF84DEkaAVUeeZDupG4xH
	 E+uZjCuE/2LPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FD2C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266279358.28548.13829071988287672205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c90a582eea1c0fce927093802502819262712ceba25f9084597c8eb2cfbd68
Date: Sat, 22 Mar 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742662793
