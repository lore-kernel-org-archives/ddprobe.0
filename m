Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152191F560B
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756160394; cv=none; b=iOrNMMbxlhVxIE5Yde2ZK2VstLDM82UcWzPejjDnwhZ2kaw84NVR8xvrObdBJ8ffwQXoIsVWAoCPOPMr9ILLmMZmEPBRa/fOPO9CGIiAggowNc17n8/TONN1gxOmah+/z6d0GiOYyLWQXV5FBOpce8ReeU+goF+xM7zc6smHLsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756160394; c=relaxed/simple;
	bh=+OkuriZEN5WGOMEOHT0hgC54bvdX5r2jCgI2XHTUtgI=;
	h=To:Subject:From:Message-Id:Date; b=pUbUg2RaV3VLFBfwEYNQauJaqXtuCWr9Yx9WbLOI7W2Xdy13KKMEALyWJV4Ry2W0f8CAIJaM66Li7YinuhBLR3BHJE3cD9Bwl5SG3x7WQCwTWnkSh9FJjq3vsj8C4luHZQ63Hp3l6xPxl/t8wp51RQLcqhtQbRDhESQjr6lyANI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+cMmSyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+cMmSyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7D6C113D0
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756160393;
	bh=+OkuriZEN5WGOMEOHT0hgC54bvdX5r2jCgI2XHTUtgI=;
	h=To:Subject:From:Date:From;
	b=F+cMmSygUOi+0f1COwiCt6FYaFp5LWaMMZepX/Gkp8qzAZSGgDSLfCV84Tg1lSgZ+
	 uddimwRwDT7GT/DQgMItDXvW+2UILbLf75AHkmu7q8jZsigsFg8cYDAPHj0m0YUQ+3
	 1X0SR0mfbMeJRCkOTROBRGzlFvy877RgIuQsFhLzPeEWbJQWV2yd449UsjLXXT7M9R
	 Qucic18H3E9jIOwJ8UqW9yFCy6IzkCOhSns8a5N+KPXP2Pi/VdZv3wa7eS10qMhQYB
	 hHYXB5D2xJlhJ7Pp21g+dNn0IfOpY03Y7EEKwAdaRenaC+IagdZO+UUH4XGFZCIrnY
	 zMFsZbvuL6gaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A98DC8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616039362.14495.5468898093014264313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c5610978735f175ec4f7fdffda35792e40ed74d9be1182170aefeb6f6fed04
Date: Mon, 25 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756160393
