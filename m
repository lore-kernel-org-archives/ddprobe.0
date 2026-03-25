Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7733D565B
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774443294; cv=none; b=Jgsnz80Nz1SnnJR2ExsrU5kkWKTXxVHxjYwfgkNr94cORty9yIo24gPZ71CfoqN8WEgMrGfhrmIxe3v2Ir7QZHxnJu8O62mPQawv3CXpBqwUOepx2P0E+HWHf2VVoEE2yVfm3rB16SROgdoec6rO4c/rpmZfTB8DqeKwMDsTODI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774443294; c=relaxed/simple;
	bh=IiyDLAhukC7aRE/AXbBrFjZVm1KEkv0O5ltzAWs3Ckw=;
	h=To:Subject:From:Message-Id:Date; b=u1HlMPFtbQ9K+araOi+FLNwunQ0NAfeM91Sm1N9hNwfG5ZN8HQ+Qz5DcqCxHvLgTFcKMSuuW/eWRnnd/ogDcI0e6JSw8H5d7/jppJAYZ2e85yV74uhdKhz7jD0r1M4K2pJncnDWlT0x70vks7AJFNIuXrv9aMewvlbAgXx6Hjto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bN+Mulgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bN+Mulgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2B5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774443293;
	bh=IiyDLAhukC7aRE/AXbBrFjZVm1KEkv0O5ltzAWs3Ckw=;
	h=To:Subject:From:Date:From;
	b=bN+MulgufhG4DajtBg+bA+FAOSBJfh4Ki47QKUq3TFaruxWjDHM42FiZ8hzOw2dAA
	 rm8ONfmYVxMEnfQxhCh6470ESEcBjxOFK+iVn2VyDhuKdvIhWxSBgxIMAljVsjyTYw
	 PzR0dH10uRG6FmWeMeazfizBopnXHsYyECGN0et9hHnDKPl7B7Jb/IlEkt7ugWl2j2
	 uzURXUPNhZMZF38FllpD6sWyarnJgzXJxvKW3TWQfhZaRXbCjkkEtkaYZ+mRuMkGjW
	 OmFeUNYAlbETEzUOm6KR4ImojI9oEuaHxd05cGAUhCNWw62TooDGqXGR/ae4rPVqMM
	 unK7J9SfupWkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E3F106B52D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444329359.22653.9407690626387774623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f224b888b280b59bd068f10f7aa4f4f800c5648cd9a38f116cd3346c69f9d0
Date: Wed, 25 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774443293
