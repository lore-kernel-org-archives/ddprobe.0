Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424611CD15
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 03:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740799734; cv=none; b=o9/PpaKBgl5mO9wOZSMkw8bxq98LiZJjsm4R5XDWGWv+eohsq2uPQcPWW8t45DhC8lL7eKE13LZul2JckBT3N9HikfYLoCMBMaGSx69HMKJR7Abynh5ZUJ0WDIe4jdu40C1Iql0ikwJmEP4HnXzhsfJcxR+08KMWci5aSVkbxvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740799734; c=relaxed/simple;
	bh=bs71A61TcbF5J0Zk6RjsBGmIH28GGtv7Qo5NDQ8Jcy4=;
	h=To:Subject:From:Message-Id:Date; b=Fw/4DMg40JJLz5L4PtD27HPTNjta9q+RN5FQtq7uCb/IhaWs5E0ENN4QWeVCOwJzI+icEtbs4kiFh96lCdDTByC3GcEcgWvDQQNhk+k2TSIRBEfdk9vof88b4kXD20DYGyb0OrZKV921LY1SinGiA8sxli7s+dmLaDwsVEW6hqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/4oxCwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/4oxCwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7BBC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 03:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740799733;
	bh=bs71A61TcbF5J0Zk6RjsBGmIH28GGtv7Qo5NDQ8Jcy4=;
	h=To:Subject:From:Date:From;
	b=L/4oxCwhBL1EGFgWTHNihgdfnM188BCKtlGmGML7hXui1OTDQBYQzSryheVROFNN3
	 fcDINSb/UDIYaw8JFTgTE705ClEt8oCjtiEGH2e4/M4C+Cqy2dTQLvX8dAhcAfRxrj
	 jOfSEO4C7zESdQcKvGEc3+8nVDAXtpBGGeJhWIuBWEqls3w2gaKVQtkUZCbTDY85px
	 sbMc1rn7rZuy7osmI3Zoj9yE1jzMoO5lV+iBBFq7zM4C9JHgw2XJ6MjgZ6UQstEgDK
	 SQaodDtbyO7FbTMLLvVmZnl+3Sid4nZhAKNGBnu6a2F6npU9vLWaxl5jcYolh85iFl
	 4hEZ2+74tpxiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E0AC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 03:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174079973358.18839.12364482364396476516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bbb1c6dab79d9091e2b1cf455497a6933b8fcd04c1b4c2a52a87c3cd736a245
Date: Sat, 01 Mar 2025 03:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740799733
