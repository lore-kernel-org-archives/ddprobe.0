Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA89A10F3
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C93DC433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665214853;
	bh=cC1oRLMDz97S5HlssiBtLASz/iraO97Jv/AxrdolNsc=;
	h=To:Subject:From:Date:From;
	b=P55V5dgDGJiJEuRL0A14d/A4Q06uVXNSqWpb9tbEBFT0J07ffYT9E/pY305ssN8Ie
	 TeQGRZGFixZjyoDZ3d9oh6R9HDoPEDMGdBepJV1KO9Vl4BrU7AhndXwX2kvUu/w7d3
	 uNLyaeZcDYloadNLInxvn4v4PXnMxrRs+X4XYgVUVMl16RH8bXq5epI5CzMvMWesdd
	 fS/mliQ2lEaVraXZO6vfyAPQEyRNU9iPnTQ4p//9cqJvvwNvDxyTcqxmRyDCBxyEDf
	 ml00OnVpLf5tv7bwtmwY+4vMenMN6lYySJA6lSmkJBQk5vYR1O5uiEE3yTnZXeuEph
	 k9BGdZE3g6u+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51478C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166521485332.8900.12661427943741327579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6911bec813f3ecd9f10eb64fac321ae381c3adc4724e25ea8c3d0d034a99b46f
Date: Sat, 08 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665214853
