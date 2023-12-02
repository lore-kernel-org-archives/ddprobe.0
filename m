Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049D37493
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHYhgX9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D41C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701515896;
	bh=Pd8SsAOviGcaGi8H4HCK+8vekEAQDE4z8F7qi7upBTI=;
	h=To:Subject:From:Date:From;
	b=oHYhgX9dhMEc/etUwKKc5YJcNbMqBqnhf0ne3Z3sK58MmsuO/S6884xJVO43KSqW/
	 J4y1Ows1V/94MD+KHxxYnWBcmsyiITs88uHW+th4fs5t+26sIAkcKUIvcuQMVdCSvj
	 CtyXiGOrXRSSlXlutkTzdnUvM8IfbvFxgH3lUV0u011Pjc5fS3PUaH8zn9TwraHrgz
	 JpRxr+diRudRmejp1M5mKjV3rvIjqTHFx5OIwPO0FTsIcbcVbYw3HJD2EXcx/rRKEm
	 ZXIatSJpKgjaRlmngghdVr5vrDNgoJpgMklR7foAinHI5qVtN+0oI1h+UQPlt1sW+U
	 SkJAH/rdLI5/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AE7EC4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170151589640.27796.9342240313864631902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b166e633151472e4307a4c0e2ea42da651120618c22b808cc55a918f8ce01b8d
Date: Sat, 02 Dec 2023 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701515896
