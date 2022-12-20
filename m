Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77C52CA6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D95FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671563487;
	bh=hOcUP4ZitSavzdSS+Ot5yOc8ozhcd/7LarG5Kg8e+q8=;
	h=To:Subject:From:Date:From;
	b=oVQhoJeXhplRg59LiHvuMREqEVsMmjpUDDiVIjm92RIj4L+Q58lUvEyYqdTKO6YQc
	 I3k4P7BEf8bHpOTmRSVtam/u4/KsbHG0TKuHzr7cmFZSzaohxYb9J9kPWge+AJ1fB5
	 FxUvpQ1BL/eTxgPfanPKps/+NlzlX9p0k1bGZomdYEcmB4iX9fyXNWE/AGmWCd+0ip
	 cxg/IPEUBqKwVP/RCpaEfy4pDyHCgN5V3Q334PlNjteGeCBHEcoPONMIVUCklu4ARE
	 HJCucEjvt26g6mZple+mjW1K91esNzEOnecCi55mtGsikBLwClvRhuKiM/u5xA7iMu
	 97thmWx+t/Cxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69CECC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156348742.7847.2086685908153749778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbabda1a09bdf951fe7c58d187d0bb793024d6b551151fe8b9deb39f78155226
Date: Tue, 20 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671563487
