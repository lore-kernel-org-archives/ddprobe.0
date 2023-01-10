Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BFF15A7
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80ACCC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673314287;
	bh=HApamcgWxIB0KIEMEWniPcfjuWHKoEr1+m0gDNMnxT0=;
	h=To:Subject:From:Date:From;
	b=RFCTB7BVg0JlCfIXninX+HYjWEN+aCwqEPL9vNaDS2Scgp0ADpMRv/kxPJeTzpAlN
	 SuuMm+sW8iXshEgnWJWtjVrttoiqm5FN3wzGJvCyYFcMOuwT+EApewYnh6gIrEy0+Q
	 gZuHn66mdWWznPGVYZy6DAitoNQaca6b2jQH5pwkzbqBQyU2XqLk+pNK9Spn7qtBDy
	 AZ0oa2NLnjaaag2riKcwtKEB4DULVA9+DPPbu8D5k0MVtrSsyM/jJ8c67uktL8fqGC
	 dMAKdQzw8fOdAiRLGUFcBLGb8kK8sUoe+CM+dTnDoRRjGAzwjQ/1rUho6rvaW9WD/F
	 o2Fwz6oapyZhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63520C5479D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167331428738.2292.7779000254929719888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db240088b0a743bf84b7cb2a7193972f868c2745618a91319d07b888b314b24
Date: Tue, 10 Jan 2023 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673314287
