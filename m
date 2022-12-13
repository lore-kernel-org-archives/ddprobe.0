Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF3815AC
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89FC2C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670900487;
	bh=6sasFqijFjEF1NB93lvlwQLozcbra3wGugkos95E45U=;
	h=To:Subject:From:Date:From;
	b=SqVXY8pbIul6YsDOCMEUB+dz+W238N827Z8vtPSyirUQ8ybxlOJpnoPUGMN0okpg5
	 0Bl5R2gRyRNPSg1/LUDpLxeU+7UpXabSAEQlhj6g9U1bLrI3lmH5RnVWAr4X7nG+cf
	 QZ3KD4Mo2Kc2bBGv/WB2OvwZwSddnFd5mDN0d7gdpq5/S7XJB59Eiictb9R5wzkJsL
	 pKoSuUzK38Y0JSurcBAs1pnvAI/UF4zRuNL5bWYB8v8E1bTc2vUrWOeVDtIFoHlvIr
	 DMNSRaj/M9TP51ZM0hyHK9/+H4uJ8pGKeFxga/aW9WB1MyOqi1JL5yZvOxpxnnD5gq
	 sUnfGY63UTfwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FD40C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167090048744.6749.7716922354422832462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f85a84e71c8bdc9586803bf303119dc1946773072d46ddc481f3b5046bbf4bc
Date: Tue, 13 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670900487
