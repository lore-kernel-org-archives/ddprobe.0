Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDE220FA
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 07:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7911C433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 07:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683616265;
	bh=lf7eXBSFwhJCvSam9ShZtiwXR1ahTlNpdQOD2A1mCvI=;
	h=To:Subject:From:Date:From;
	b=R+aaLspHSjCGEAXAeDfdBSHfU3Eu4BVp8VNi7r7UI8cA/F9DUUnyf/0cbRLnploDp
	 SZAnDTOB8ZsivpBqqWgZJblEbJZH9cSTpgZYtN65XRAhns3XOlsquDNuJ3VuE0yldY
	 HcTjD1OPUDxTuYoYsAdtWccAe0by7+OGxpbx7cmSVIjomuHiNPBI+MLfmxFgNu/uFG
	 HZuhnGt8fz1ViY2LTT8ZuLANd3Lx1ff7CUqPCRdUwuvTVko6cS2HKyzfgUh9yu1T3E
	 6tB4wi3juQmHQ1iVKcY2r0PSlQZwASUjYpSbsu1FGR7EWtcO9ZAgMl5iZMm9ZbtbxR
	 tY/1PLixbsPLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F6FC7EE2A
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 07:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168361626574.8072.3914873623403909521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d15591958aa5670194b72ce20a95e97ba735bab580b65a9da8d998d884714897
Date: Tue, 09 May 2023 07:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683616265
