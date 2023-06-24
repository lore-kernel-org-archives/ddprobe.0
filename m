Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CA379E4
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72E1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687636988;
	bh=rYKV3xopfnVXvMZzPJUIvlAYY+8qiOqYCketI8r/Lvs=;
	h=To:Subject:From:Date:From;
	b=XcXKxpRs+Wzw/AZDYoNr29U1I2iFMSIN/RcyT2L2QPR3/UegWHsfRjzW3QBUEEy6U
	 TyR4c/7XkMSo8HXnX/WiqSWvHeNx2fNI7x6Vt2xQstVbyjDJEs3/VGXVwOwhA/ltvG
	 3AkEs1tFzbKiITPzaN4yK5RIQscN3C1Nmul3gQI2LzjT0iiYS+p57N3X7PLnvI+xYR
	 qzczQ4nGqsq7o6qFLxVbn6HNmUnW+nDLnZbmlSYrn4yz38zrYTg+pPihMNGdJckQQp
	 LdO5Y9S+bgZ0u46vHeXdRt27Ne/csSPxlNcP8HaSEFX7tXxOwm+R1FwI2xB4fVztNJ
	 HyCodqZl5zmBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BE2EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168763698870.10411.14800241436733013403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cacb5493c331949c1acbd2237a40f3a910cedf979d0e5e53fd6e8e88a2453917
Date: Sat, 24 Jun 2023 20:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687636988
