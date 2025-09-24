Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D18033E7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758691794; cv=none; b=pwWkFm2hKhxGuxR7fvQ/7ciXB6dT8q5B4dpQcBy+Px5Yin8viuwm2lUNNpy8tDQoJEK5gupL836pEAlbji6ajKYLc26BYfyUM9b2L/Lqj+IAeImme+OAB+k32k4T0rN8kZk++itVcxWzrSovD4zAoRmmq1eBH7BXUhYnCAcVCPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758691794; c=relaxed/simple;
	bh=FpxT0qLyd9+Gxjm7ejZ8hSLlkxdOWJTIjH81QIN+E9Y=;
	h=To:Subject:From:Message-Id:Date; b=ihTpy8TYOsZzOTOtU7FHIq8n5/CnT34m+ZyuHAAJIKepT7Ej8E/qAtcDgy/ba4dOuwMRrfqA2pmSNgSPne3F3SC/SboGmmNFYIz7Da+TvgtnOQeNK7p4V98/RoH18uytCWbL8c9wPLOTNI9L4Ge0hVoxPThuoVQ145E/XS3AK9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E03TTnOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E03TTnOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6263C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758691793;
	bh=FpxT0qLyd9+Gxjm7ejZ8hSLlkxdOWJTIjH81QIN+E9Y=;
	h=To:Subject:From:Date:From;
	b=E03TTnOzp2BY0sVDAC5tZxwK2kwQQ/Rv3lktZrhihtcPM3E//xOKEYngpbDS2um8q
	 lrGjOkhJW1CoitEzAj3KFumMXcLN1pN2/cR0QF1qILq6QaC76jCkRQEpwF76d2vZRG
	 aGCwkZt0CwgH/Y5E9GcImhD/YY1RV5CoqDFpKdrCEW0gD86Fv7KH2Z87rYb9q01sUQ
	 Chg+syOyjZnF/BtavDeT4Ft5t3JULy+tBY5s4RdpSj5efZnCYMmuUEqNWN0PFpydSw
	 mT99DjOvKSkyOP3tpz1C4pWhrwecwpwhuRKuTVW72UhyMSqfxmpPg5hwYULSTSfwFA
	 1hVNz5tzLIOBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B3ACAC59A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869179359.17865.17649654698393423816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812bebba8992774163b7bb69ec462c006b24d818fee7c09b0836884ced0ade8a
Date: Wed, 24 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758691793
