Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3597EE555
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778026654; cv=none; b=Yohd/r8SO6mUc1cs9hb3cHjG3TVnq1LUW9M/4r+6xExsjtFfzC9DYC94Da0PVli8VOEaKSHIeAwNQZW2oW40Res0ym4hycKj1dKdkPPxGJQzNEHqD/odWodlwdSV2KsKcwxcy2C9biSvbC7QC2hFm9Z8o2jNSS4AQa4Bt8b6roI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778026654; c=relaxed/simple;
	bh=UO1sJmS6i+TxzJAuU47OvfawvStbv1Yq9RosXWlyYuo=;
	h=To:Subject:From:Message-Id:Date; b=ECHOl7qnNSbKw5/jXjSWPU6whKZWvX5/cSIhj3mMolixPViruNnnI3Ac65kVfRPcCyKgeKD5Hc6nkq/qA5K/zQ8meItKn5q0hsSFZmm1Hmx28R0iaj8ND98m+LlChPqmJTWtNcGj6h2dYIamwzeSmdf2ciauQ3YWb9zq6jj3F44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vkj2pVZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vkj2pVZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10A0C2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778026653;
	bh=UO1sJmS6i+TxzJAuU47OvfawvStbv1Yq9RosXWlyYuo=;
	h=To:Subject:From:Date:From;
	b=Vkj2pVZFACvC7qbRARYooZmLyYcaQBFxjON5RgiVuucUQMe4DRbX/2daPNqZ8tsRJ
	 ONbnY2sKTUEaNzvK5azmiU/DK+oNDf2lnHuUGk2HuUsSCAig0O+niMOfD5NXXjrHh8
	 OK/bOZsCe9HR1G9lfDVgmusrxF4X644ruO4ipNi2WAcQIQUesPWruko1nhqmv2hwuT
	 ZeQc9KlgLOHfRpgyNc5b3o2QRzA/2Tad1o7BSq8fiLvx+21sIaGhAgckIT1SvOoTUo
	 dV/oZoZiGWVB52kV6LIlDhzHRBrlCg2PsztWnDAQY14gxCHk3Dbav5bdZxZKASdPNx
	 l+K3Zly6Sf9Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16FFCD3427
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802665369.15942.6401174030633967232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 112e753bd3ec446d25ecac32a0ac9bb061c918cc21752e7e92878541ffb5004c
Date: Wed, 06 May 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778026653
