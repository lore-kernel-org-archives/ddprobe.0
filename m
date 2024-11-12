Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B26721764F
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731436554; cv=none; b=JMZderug2jSGBNmnllz06sB0bHbmVXEqW3hsTVXtK5qMwe2f2PbPW7Ce9H24O+mS87f/kd7dsFzzb+kebMrpFW8RkXnDstX22MznJYJCil6dLFoVdaID0jVdOeDtIuzcwZUsYpSc4iXPXh0h1a1cXyW+7OwRpJwfL7xXeqbMYxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731436554; c=relaxed/simple;
	bh=gL48ro0Pb3TWyEkM0t7Rr41ltv9RyH9dvhvtdFUEIXg=;
	h=To:Subject:From:Message-Id:Date; b=j3BdJ+e6RIi1sEXt6qOogMNtWR+tESOovBALgJFSdENdQ4cWNPyJdXYEwgb5S4qHTUzZIpICNky+V1DfsFs5ycf+//yahr+xsT0N4LxY/GtYuF4+DvJhijzs0OkW5QRDkgTHLiMaYLsWBvT8HMsD1rDblZXzVRiBCONQTUMDly0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2cEQ5iU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2cEQ5iU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E60C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731436553;
	bh=gL48ro0Pb3TWyEkM0t7Rr41ltv9RyH9dvhvtdFUEIXg=;
	h=To:Subject:From:Date:From;
	b=f2cEQ5iURLZCMRC8Tsi0BsFSBFBXP6vRaZJkK1GbbnzZmZJu+rA86Bep5x1OscSmU
	 SqVvv4XQfFylzRza3OGyRHcohso6/1tVw0JMys1bTx8+ouWqm9bXvmR2LRrglLackg
	 Wz4dsDeEBM2VBfqLulWmXJlOwvigzqQ2jCQIOwIL94SXVBXu6/k0TdmMsqiF+IvsWY
	 vJuR1MQo+QJNpSfxAeEKxYr/9vgV/eTOs81BTlDDMBf9KqZF8IlJTMb6ZRT1ZNDDTH
	 8aAWSyKqdzh1epStsse/u0f0PvfNAdlVRk7aRtsGPGg8i4ofcFQeFlYDbQ0m2Vrsnd
	 bWZNbN5qre7kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B9BD32D81
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173143655359.9249.6667236249592806033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06a732d7b9faec9237da4aa0bb61c1d12a7a6067eb13633f194c3a033d67b78
Date: Tue, 12 Nov 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731436553
