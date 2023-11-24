Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA96364C1
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UojZK+4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8492DC433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700868496;
	bh=hW6rp8qr6EHh1kl5ZbqhW99Vf4wZNYdI1Hkvu4nlb/M=;
	h=To:Subject:From:Date:From;
	b=UojZK+4ZE6nmWDM6TmMJj4rC8w8TG1MM21MHv/nXEtrMKMr2nNFOpDhyL45buxr56
	 cAuDMz+cVrKV0ZAj+Ee7Uhtd6LogWLixlTt/IfkUs+kaMPOCCztNIdy5RUftsbFJym
	 rCjNIx2YvhaKzdtbVjc6+l0jINAeDTO84awly2e6S6HRPufFtwcCo2WrS7pRGNQgdY
	 wWScp5TfWOJ8R1NHoMs5Nm+Dmw4J58KcbU/N436MfWVlcNWpgLyyoetGgtH5vBUpg/
	 Z84/JnxtaY8ak+u8Llzd0veCBAFhocRf9N6w2LGnIZxRiQ3KD51Zie+S1FeIrFp/Y9
	 lJlYeRhg3Owsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644D9C61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170086849639.30076.11875024582458744377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1a3646a065065a2a9b6c2e9e0ed3357c51050f54cd87b7ed9dd91cb21a2362
Date: Fri, 24 Nov 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700868496
