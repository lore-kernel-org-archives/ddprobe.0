Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FA516F288
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776957454; cv=none; b=nKrDc24q8cysTrMoYrmmdI4OMnvvcCZPdYBd33T1CLB45EMNu4iH3RiUeB66Tbbuj4VxdPeWYw1tZxBq7SPQSx+Wc6JJwwHTYNXYJFJcoU8cbRwcovn266OIyoOEF48GScJBJEMY33ppu9oQqJAYuKgroC3fHncX6ZlSkWcrZoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776957454; c=relaxed/simple;
	bh=I08Zj/dtd8PH8Pa8xLo9/GE0+U/+1xQk76EGuSkWK/I=;
	h=To:Subject:From:Message-Id:Date; b=UTfM5gfoKKlLDTAifsE0pyzLYKamK5gJMKAsrYfFxTf0UTNNyBzK0K/v6wHtegestLhtEEAh9cI9JNIvpXwvx++VL7XCa98D1xlkoqrDnQBYKLN+oLu709C73sckI3upe5kNYkR0a3BmPw1Ghjgj7Wq3jgO9UHaX0UDOU1BgcPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VV1GtJNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VV1GtJNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9228C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776957453;
	bh=I08Zj/dtd8PH8Pa8xLo9/GE0+U/+1xQk76EGuSkWK/I=;
	h=To:Subject:From:Date:From;
	b=VV1GtJNYm1Ibe//+tPCut44vea1dEk6fO1Onc0h8VHMIsBLi5QTizn+QZYWKtwzpA
	 Dy4kdeI/9TOFtRr8lGI3pcLHp3qbUFrJpycRRmT7QwcZo6I/KsY/kTAvkkiBGBQmGt
	 v3bRpuLuSuK+Lck4+NLCxZ1io7G4G3RB8z7UJ2txYhL1UPWTr6MCXKIU4dzXoEAtNX
	 fZC0QRJ8UKrW+s6E+AaMsZr/4TBdIOE2L6a+mpSXSFsEnNRjPjYzZKDP+gXhmPzoFv
	 lfb2D5k3DUoCQLdhNA4untwZBKElMU1SybKUJQY9rGqipukZ0nKbxcc9X9cnwAH4ei
	 jAcEVQvHl/Pjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABF6FC0342
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695745368.27264.6878877790757314142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c2e8b52d19e8fb98b44758c298048b1e2846d4700065c120f9a0ae0ebd1fbf
Date: Thu, 23 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776957453
