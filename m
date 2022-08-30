Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA446131
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74774C433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661901653;
	bh=GGr2EwUR0C5DkliZ3dBweqeQYWcE/lx7wgdmoG3TRSA=;
	h=To:Subject:From:Date:From;
	b=G7TRaF+xd5jknjOaMYkV1coIRX0ygzOUof2oNOdiLa44a7W/raiOiKYgmeZibj6To
	 27hEGqxk30wHnEDHFuxoutwesIX1167s7H1UmTNosXCvsbwTunsEP8ze9qshJy8Sbf
	 mqBUHxXhO7Jdzsl0wsdY5mtyy41C+WXDJtizeBL4DSGtSd0SwPXV+BXAd1u2uJjkeN
	 GGHgEjNllSMVONrh+C0SjQ0cMzkLGP1nY6xDyvxlY2LLnta1T7BtLeZyZ7o1Kb5pu1
	 O2sswcMbNX6HGcppSqDp7ck0OOtZ16zG1Or0ucBFUuXZ7f1t3+1402M5hk81L6b00l
	 INpobcE0v3wVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D99ECAAD4
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166190165335.18774.8493257119550717343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c452627bcbc7cc1aa613838917d17828a8a3f782aa01feb7cdef412e630ccb2
Date: Tue, 30 Aug 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661901653
