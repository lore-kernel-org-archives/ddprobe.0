Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D0919D8B3
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727776553; cv=none; b=Hdj2cMp0ZzaMhk6/a4hTe0+TqT08e10LateoM7PAFvmQ68VpTGMDBshvwWxNzz9UGIS/G0krNr7GjY0fD9l3kxFqZ/FC5p2vumuJFq1J9pa98/n4lIpGH2PEDgAgKKdOzCTGankldepA2aZAP76fhl0M8Y3ZaCN4A1BzBSMJ8vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727776553; c=relaxed/simple;
	bh=w/0X9zpMfwTzZmLVnKNBrjbf/v4DTXyy0Ng9FxBSiDI=;
	h=To:Subject:From:Message-Id:Date; b=WJhlQlklFznIRTu2THufh/ZJIFLfltut7HatoQXbwH03k2ayegoD+Jgd5Cb35+zIL7EAcu/CEaMU92bDY065febmLBlnCn8i2CBslPplo2OfHtrYpyteJyDdOkbPjcnxQ88UkKn9RHXPzVqGND7vkBPGeX++GfTbLiGcMAB28a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4m76Uyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4m76Uyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBE7C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727776553;
	bh=w/0X9zpMfwTzZmLVnKNBrjbf/v4DTXyy0Ng9FxBSiDI=;
	h=To:Subject:From:Date:From;
	b=g4m76UyguMoLCRnm/N32Thmpwj8Jq9Wu42xY2Y6tFypqMaAzCutFBXqrhNpRu55qj
	 UoRsff/A9zXtiDw3w9LRrgl/xsQQ3kol8jgAKjG6D3B5MYyirimqdJ8wqvc75HjORA
	 BejqZUEYQxjH1lS52KLo7XEZ4pWesqp7f/PUdA0yfUe5LDD3tM2SY9+1qIplYD9cAP
	 svYth+Ee88bYhyqnJFCLx/+rIFO36H1T6kN0OcMyFKNqavOnmFwvHHZsr8XyJDSh+F
	 PPvp/DpDf2puyP2Wf1QMUThOt+PadD1TgQH9iNmK8DV1JhEzBClh29/VsER2+4RQfn
	 /Y9S7FBEFPQvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0855CE7D05
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777655364.11869.7576292622415421929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3b8be38430b6d490d11d3b645c7b32781b36d0801a78d1720d669c49216925
Date: Tue, 01 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727776553
