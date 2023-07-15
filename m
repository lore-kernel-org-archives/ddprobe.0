Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCF815A1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 07:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65B1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 07:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689406268;
	bh=Xy/9XwYk4ArVcpjFqTJ56kKwIx7kty7+L68DYH8lCGc=;
	h=To:Subject:From:Date:From;
	b=aftkDg5tg4M6hcnuG6Ea3p8iL0SIoQSfGZJuNWhWF3EikUgQrJgyv1SJQ/A/LhLj8
	 4Rl+eTa14TqjMHr51309nFl9/Y6UztY8UpVqSOEnfuj35YdJsSLc855s9PLMWpixJ6
	 pJqTBENAI2Xs4l7y/sK9CcxnuOTNEkrvLCcC5Nu4Tyjq0VP/hmjIV8rLa7wkijupX9
	 qpyKi9uEGSO7Fqq98HCRX2kpaQZgy8MTfTf1Y8sua7ZynagPTmC7qqoGWo2WUfhrwm
	 aFLxSbgqYArlqTKyIIwF8XKe2u3Drxgg8/2zXIurU+jFMWNsF/e/GyKKiKtrFGacvN
	 OWohxvkR9w28Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F32EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 07:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168940626869.15687.7692677908728492008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3fa8f8dc82ce77896bf98e3c43e169a700c1c8741af97e5a10342e06e2ea8f
Date: Sat, 15 Jul 2023 07:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689406268
