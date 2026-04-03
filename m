Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31452346ADC
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775250934; cv=none; b=YqbTkWB0q+bo1W2Ya1aD8N3Pa4yTv4xtO4v279c3t+X/Om2gfmncMXih3gPyO5q7FNZnfOxaH2OZCIQXuMdU62AphtsmPimbey+WBr5w4+JMIiiq7oIKESdjDgw3h0N1r9QJdxtBLVDcoOPlAAu9FdQNAFEZ7DvU74WKXag/amE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775250934; c=relaxed/simple;
	bh=mYsFlxBd0BsAQlxwHNaGQ2gtVXpFCJ3DWkdy/hkG0Ws=;
	h=To:Subject:From:Message-Id:Date; b=Fcj1fRGyFjVCUE728WNnhsigZLdwY9+nxnLAM1y93HhxeVD2RXYUBF6NRv8Fzx+z2p9O/Mt92HFrT8FxTvgm1XVPfOLHyHSTHAlURBki6vHEOdf1Ib76JRh/2S2s3GxTMkBrkoN8jhy9vhyN082DoIs/VWTAuAD9kTQisnTOS14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/UVmLtW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/UVmLtW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA1EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775250933;
	bh=mYsFlxBd0BsAQlxwHNaGQ2gtVXpFCJ3DWkdy/hkG0Ws=;
	h=To:Subject:From:Date:From;
	b=j/UVmLtWA4UDSyjvjGpUQGAr7GLghi/6FQzK9p904VKZtkro+eV7R+LgJxHZYdi99
	 Dq/+NUhTGFOD2+CvhOfgZjULHFcxAN5WGTSGzb4kSBQO5VeF7SmRWINliVGaMMF2CL
	 E2fpd32hEewrWiuTz5d6oXhmE3NaZY91GUY60g3TroPi66apRmO7keoiB0kyerlWoU
	 veCFLHP7I1h0KBDKWMRCnchI/c9sKkZh1KYo8IW3fNFqgrYv3boARqv8cYNERSWqGX
	 BQPLluX9zgRFgLGRhHorQahYa4KNOEMn4yuyW3wUBCXiKXgi95FAMmO6P9gzuC/9hf
	 IW+wGk4F1NeGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA07AE88D63
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525093368.32366.13620214356337796132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a505c1afdc053785cb3d5bb11b3fe596c104cfe92b4552cfb666931ad844db
Date: Fri, 03 Apr 2026 21:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775250933
