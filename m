Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3227C4369A
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761970794; cv=none; b=AWYKTvKQxU4ryKdePqIOsu5twYXRTu/WbIZma12C97yaWzD5dZGDVrUP6TGc9RAq7XbKChejvdBRtdYhSnW3zT+ZnOVhI2lHWwvu7MOAWLuiBB2gle4SOatzHJ1Ba8nGAxq1Qmvh6h5ZFDCxQE/RM8VOxu0JDjxm9vSnhgFjKh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761970794; c=relaxed/simple;
	bh=OhFcwK5klJIt9m1ankqpFCc7AmxirOeAaR3Xdw7rLiU=;
	h=To:Subject:From:Message-Id:Date; b=aADtzBJ7w4OHp2WAmBm7kalMwgRZlAvW6N5xTQmpVW160mEwwWPhkcIoUiq3uYz/HurxiJLUiRxjqVDs2s8voDlVcM0Tqlyhim9+swBSMtHViF9YmH8S4m88ZwSOMY4j94TDnj+tcABDfnGc8IT7oECmsxMuQJ1/eTcD50QYvVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3Ue1BkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3Ue1BkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC9FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761970793;
	bh=OhFcwK5klJIt9m1ankqpFCc7AmxirOeAaR3Xdw7rLiU=;
	h=To:Subject:From:Date:From;
	b=F3Ue1BkYE/6GH8X2famCIKr7bRdCFkqGqwlmVFsXpdHjjUAigGMMh+d6VLzc17rlu
	 vm9d5NuD9leSduJhFBvCj9K9hJ15J0WY9p7J+3w9SSPve62r8GAnRGIQzCIEu7Dc3Q
	 uO3QUoto9IYY7p9X+HGAfRv4OQv/jLRD3gf92+8dV9r6DQ4qnA2SHLTLouM1DTd7Yf
	 B7v9BtZWFPqL0flrzpln+NF6myAdZXK0bmMyYSrpXNLG7qeRT1JInpWZf858Eg3GrX
	 yGH6YjD+gVfwtsoqJbFashqL83ST1SC1t1fYu++PmWdVS/BksAa87Hwwf+ajSfMwAm
	 umFSO+RfVpJGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96849CCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197079358.31272.18294502388217920185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47da79588a770c62da23a4f0e0d67fe4bb8a12486a247b3bc889fadda90dfc7
Date: Sat, 01 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761970793
