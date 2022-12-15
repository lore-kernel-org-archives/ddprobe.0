Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDFBC20E8
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 869B0C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671082287;
	bh=9wAXRVoeyWGvhoXWut4A6qNnTufqDuhf1vaAzZJWywA=;
	h=To:Subject:From:Date:From;
	b=gf2zV82CI+J5ky348ZStTRU5ZgScBmobD6FxMWvBQ2FWHmxp8YMZnZD578Q3GLM8S
	 HgtzDPY4rXdXJmQys7ig42mGAh5r6ocm8Go7YrlITGEcZGaD5q6B7Pgj2blszX6VGE
	 IbrwMOYdsXUjWMtUqY94+HnI8oGG7qnsMNPnbL4zZD+rQv5yAWbPTSUn7sYlBhFftt
	 CCvq5QfuWGGLlpJQAgHP7rjGkudY/r4g/tzIq19PMubVL/S42lLbKZ61nnFqb1jLN2
	 oDOy3bU78i8E1FX49YuCyZ7mSHBUPeU1ahv7x+Po67W/SEoIX6I2o+vmv59KKqFKc0
	 3tNzNiXvf2z0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 617C4C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167108228739.11332.6457275342183179502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee400f7c6474db29842f6a7959333fa5ba28df2c31f40e04dca4f74882a5dae
Date: Thu, 15 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671082287
