Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCACC1B6CE9
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757080793; cv=none; b=qCwmbnrJbOhUwmzv5GBMwAi8+sYtA116grbdGhMUMB6m0E0Azz5CdvOZfifTDNoOu4Qatc2cTXMn2kiDtUgcTrmindCq72SpahfaGOEhNOyssFBNtjFQMm/inV6IuoCF21WsAyorwfN0gLwAE2ktpWV8RQwKBF1ZHCPvJLkmpQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757080793; c=relaxed/simple;
	bh=T5hDUG3E2yL/guQr+T4ALfd0zapuAu+VGOpsw8IIWIE=;
	h=To:Subject:From:Message-Id:Date; b=PLQsxze7W8E/O/M8IXOOJcS90M+0WNcqmWf3lrdH8jYCXZHtJYuQuQvKPTLFTba4hSWSsJkYAiQUsXbeB+APiSTkumNc481nBK4vmtgiz8/zfm7sO6thb2MrFtFRzJCKKYRGK1vss64NGnMCfW6psgbXVyTlZZ/uqcq/DW7lz1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPRTy3qg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPRTy3qg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A361FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757080793;
	bh=T5hDUG3E2yL/guQr+T4ALfd0zapuAu+VGOpsw8IIWIE=;
	h=To:Subject:From:Date:From;
	b=OPRTy3qgsIKGIP0jpOPTLF5yhQmV4Go1XGsBkcHFCCDvDmaDouXSh4iP774m5XMNW
	 Y0jmxLxsoCxfFcsIGom/H/xUr9uNZsUTGa8kFG6qhmkrxpvZ8AFJHZ6AHxfEFgs9Vk
	 zYj1PbDwJSwZ3gEoYgWCI674NNs//DH1KNK0NxO6+ysaUSst4gfbSIJnzj1lOeO/YL
	 ulbcNDmCOEAUy7q/KOdvj1zUGT8XPPEp4DnX1RexJ6+/emTQ0gVHrWgfO5Ia4+xFSn
	 y6M39bsbWn9guW4l3SSf1hiNHNjVJraLDcq+l9rwTnQPjnzzT8YIof7RpPt7Bmr5pw
	 n5jY5+LLMCqEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E61ACA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708079357.5007.13209769972599547509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfd6ec67dad306906937bb55cde532b1d4b4e26633774d2348da5ed369cb56a
Date: Fri, 05 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757080793
