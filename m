Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E371DAC92
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751393994; cv=none; b=GO4aa/LY5egkS8erQ9OG/bL/NLU/4hnAUtQkvwsg4/oUeyBmzz60dvvmuMFmoX0Kpi53cz6cbW3W5IUhtzpKc2DvCSN4OVOax9BfjyFnGUAwSAwZWHn6Q9Kz99if9MsXLF2K6NkYYtv7GOQaY+yI+Er1dNKqZncP3dLCOeRmtiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751393994; c=relaxed/simple;
	bh=E+PG/wPd9pKFfg2vaBPfpBQg0ODMGToBan+ODStgs+o=;
	h=To:Subject:From:Message-Id:Date; b=IR6utwzLS/c1Q/PilsAijx0Z9Wbn7jl68ghOPjbS8eqKm4ZWjNImbAyJNga3Sd2FMtd7LiVSQ4Rd9toCMqLIYJH/RSzsj0oWvTtaSSZXpxU/1gQpa6AgYJpQlgYBJ05gECfO2MC+/8V64ioTrXgXBx5kcEDcqz8bzS6W5AaFGDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6B+NOlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6B+NOlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC33C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751393993;
	bh=E+PG/wPd9pKFfg2vaBPfpBQg0ODMGToBan+ODStgs+o=;
	h=To:Subject:From:Date:From;
	b=Q6B+NOlEGbQmDiayZ+eBBf0WZHxFaaqtGEGeg3C0D3QC36ecdavZ9QxbdckD/rtm2
	 AgxQ3FxK2Pzlrxk6EaZXtmWsCpwNwattFydXyTJFXbwyB/WxzBi87M25ch4nTnNS8m
	 yhz/mETZghpxeUQSRHf7E2oTNk74QisxHf9l04NmfN9BfIZEhNR52Wf6AZljg0siQ2
	 hM+STZEnK/+wwsJpW1+WsKdpXHWFCpRFuM7wpuQt2zkSqQloOqauwM6NHHCxDPeK/S
	 5JH7ssAzEfTOVvmvjErWRw3JHE/azgati2O0wcIEuVeYYznkgJndcJ+/48aEtplt3G
	 0LjUfzTvRPbzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF69C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139399358.6418.394704514541850164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba04181ec65e4eeef59687b0ecdb2353e44ac4bc740736d758955a5f34cb74e9
Date: Tue, 01 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751393993
