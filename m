Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFC1A55
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 06:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0OrNV2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8551C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 06:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696919228;
	bh=TFC18c/INFCQ0cu5IgXuBNRGGve1Ks1epTsNWcS3tBo=;
	h=To:Subject:From:Date:From;
	b=t0OrNV2CKMgrSKFaNNKhUV8m3dOgXFRN+2j+ktg84+wsLze2+24dGwtc9gPu6AlpB
	 5BsMIr//XBdc51MtEZ7EcefTuBjezJdwxTn/wscauHnhtY+QqhU/CtLsf7hraqhg51
	 yOSc2OVrhYNt01Cp6zSVGSakSeiVe0dzz9kaV3NPHIrP1Gng3UO9ogPLw0soudEcJW
	 i9Q0OiSd/kI/Uxi/AlSJ7xZdcYq1HjUoW5rnoIZoys53ePqm+7/sq+4IRHglJSbmu0
	 mrCKg82hGXvOYH6abmOtXeIhwvQLNGKMCuhWnbfK6MmgKUdtkbRLiw8BaeOnYACbkA
	 BnXILJasRQ3rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99B9CD68ED
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 06:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169691922868.6935.2554167549686546120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96edf955ac1464207a05c13eb1be52bc30164cdf60b10836e6be5130f311daea
Date: Tue, 10 Oct 2023 06:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696919228
