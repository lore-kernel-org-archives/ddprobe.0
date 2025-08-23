Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37294C2D1
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755938394; cv=none; b=YZpoVk4bP4HA1Rd+FfXKLMTBrzbXXUnDNrHjwmCGH5HgoqWsWvfOsx2lM5n+IJqM/gDUrqMVrWFlR7yQQRjoly6V39k7VRLe8RwQyXbcaZdoh2AGA5qZBwStPx/YdTc2pSqu+L62ACIwwa6e19DxEP9KhHybgBn3YM50mh8NOkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755938394; c=relaxed/simple;
	bh=5kqiF45o3wdQ3eNls2BVzrj8VBCEEsslNmNneUXVljw=;
	h=To:Subject:From:Message-Id:Date; b=grfsf7g3gX6uVFEAmnELMzYpsZO9+7Bujh+j1zB5poiQhv7G5ldIj7f5Uocx7Hi3LiX86SLzSFrxB49SIB1J/3tU/o7N3eGXIolWpVnuyPJuRhqZ8O9G9ZBwlvdjUXUsfj2GOSQqf/5aIJhMBVf2+QcldKmwfQLiSNSXEjIiENs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIlV3Pjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIlV3Pjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755938393;
	bh=5kqiF45o3wdQ3eNls2BVzrj8VBCEEsslNmNneUXVljw=;
	h=To:Subject:From:Date:From;
	b=WIlV3PjykaVRKCgglZW1jmqhhPp4dASg4KjGsaC8d5TUNI+P6sxn4dnqCrpIm1u1Z
	 lOiYnBwibik5c1Bpr9ngEuek6f0EshJyjWQWwfHDKO/7LfhQl7iLnVCZxln6mz5r8s
	 IIEZ26baIuFlBfLdd9AkWxiCKlDQ/MBLkn0mEx//AClale1GRUtOhKRp2IyJN3MKMH
	 Q++N2goWmCC7rW7lUsfvM4iPTx3SL7AblvE0g3JEAmRFViYWJbs7Mu7BRsqbjTlaL0
	 UAootlbMk7vKbbp+diXBlUCCG4DOwyNfEe4W8VDhT60+lwqguEDO4eTB0ulKTDx3YC
	 qi/dYnqVm2sNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D5CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593839357.12015.7127353298013046990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9718f0645e336f676ba97e2c3dedbc39b3aea8bcda812e3f8d4dd7903abeee2
Date: Sat, 23 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755938393
