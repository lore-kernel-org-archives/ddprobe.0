Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A26200B8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoEdgif3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BF93C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697822296;
	bh=xm1epWfr1kKs/fpFzwu0xfnyt1gtQk3B4lOU/gcCOC8=;
	h=To:Subject:From:Date:From;
	b=aoEdgif3G0+3lfDscclB8ytIHUHxdLMkCHhKKabZ8BmT2OEmvKgJSdxuNuuUUirVX
	 TJpWfejTdV51w0iuT+hVM5uDR2xr1FFvT9+jXiBxytImCA8seZPrh3Yy5rqyGMvhfX
	 GjVncCDfn61AXPOcoDUulcoI8DEBP8uP63co2mXPv7DsnwusCcSfLV+I34hajjx6Pz
	 uHAvvnaZ2qjveZh7/JAOiJ7vcb3qizC9u1A5mTPbfmXHmTlULJoqkw/6zzypKqUTcx
	 gZWvnjFbi8ugGnPeP08I2xAZfgBcDbKAadCNT+4MQtQDwI7IO5n3dO0ff68mvDG2B7
	 AwkNGg/LHt2HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE82CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169782229643.568.14829330718127323242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4050ef9fad421d16844a85f702da6f078e9990e97ec06bf088decd383342f31c
Date: Fri, 20 Oct 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697822296
