Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D3A7E
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71ED0C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662422453;
	bh=ocxTR+8oGOQ9aSLmIjc1BOiCey68R4hjsERS6d3Ub1k=;
	h=To:Subject:From:Date:From;
	b=lUJBAB5oJqUckTvkl2lGDR/TYeusPh0p+msbKqLFXaI982J4k1afT1fI02eg2m2cm
	 gAgIjo6lUQqGDh2MrkmCTP7Jvjed16psRPZKTeHsNPZrG4kE3Lidcx6TqBFz92QZJ2
	 efPEbo6/eXSe30d+VTiL/+68B8+LFpyd6famOQmymdDE50uFOXBaWaAmJoyeC3QUbn
	 Bz/BIti1+AR50uhLrd3hYakYVUjH5it72+cExD04GbYY1P4+ikQJO76CXdB6aZg/XD
	 a95XmOhiUioh9DDhavAmFLDa8DWQaHxlwekfpwFgEh8cdjmtdl4c/VcvRq4ByTOoZM
	 p439S89bRAUuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58513ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166242245333.31848.7901005042401925080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 092ad6fe8e87eb91e88f4f23a4e5368980020ca0fe9750d35ddbfd89783e68cd
Date: Tue, 06 Sep 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662422453
