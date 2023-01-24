Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EF4A31
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 04:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D05C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 04:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674534185;
	bh=/Ka1EQsqXYeH1DFGPaeHjaqYTHs9KmNCvL5k+POXzKk=;
	h=To:Subject:From:Date:From;
	b=dA/ejs9tG+SY6g3otkHXHCKEe7+KYbNaQIEshGB6nQKC+VLwDUmOlzcIEseKJsnnk
	 6tXL2qZH1evy9DQ9cG9gPprST6jsDC2+GIIyebqrsl1Fpm+MfitIrQxWUprg4ZKsJL
	 7EPsNrJEomNytWotpGG7dv7H2uNPReh4N8hEFPa9mFmsayPNxgRWMmhgvOnK/pVNAp
	 l3bIr7hV3PoSHuZ58lvpnlss+E3e+lJURv3Gr1fpN0ULg+3ZEXlx2A4RzulFgcvm/b
	 ZOVaMZjb38hxpTjv0qqrfrFBOremGsyPDfL2gA1T8/Crs2v71mYEe3HWfKDwEdSq11
	 8zfMH0DJ8E/OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B842FC25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 04:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167453418573.21210.13693959257418605063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03352fe2034a05a656b69ec87e078a4a2fe0668770a4af51320714e8340a2bc2
Date: Tue, 24 Jan 2023 04:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674534185
