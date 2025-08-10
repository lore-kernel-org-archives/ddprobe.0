Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394754690
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754785795; cv=none; b=tBHtYZqb0a0EQ91GNG/K8E93Q/WkZqlPjJdqDwhXwhwhwzMBaKiWF8kAdtNy1hUtAZNZ4kzVBTT4k6g8N2mgwnNs80hAV8yonm+Z2AkYCvoSPmgrqSPt91QcrkAETu3M9We/vgmEhn/C4IGmKiEthXIiNQGIq5pJKAO/epVU+b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754785795; c=relaxed/simple;
	bh=cG3F4D1j9ENhK6pckeHpS0iwTas+srVQw79sp9BV8+0=;
	h=To:Subject:From:Message-Id:Date; b=tdx9UV59xxi1fvOHBc0yBo/yJQV3exDsOA4Jx9BJXCLpn5DQol0bX7b6mVFEYL4tc3hJ2vcoxPPJHO34aoKG3kJBdPqzOBDDYKqkpgHfUgbomi9hCBOdzikV5SQOQNLDOAc/XBlbcofWkcfJIRpFj5SOqQPVaKEyb+Q00G+j2LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYQRGL6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYQRGL6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45B9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754785793;
	bh=cG3F4D1j9ENhK6pckeHpS0iwTas+srVQw79sp9BV8+0=;
	h=To:Subject:From:Date:From;
	b=eYQRGL6BgsNg6RKldStSWNsMOTe3/vA6q9iEGQkiGc3qz1k9JWixsNPznoCZD6ks9
	 QEjnm/M6f7+JMiRyHUMFvJ0LwWArTSXlvOV+s3nkYKESrwmReup66uO7oXy6Vl5MU9
	 ObtKnWlFGwiyLxXkyv/sGXjwQg3p+MR/zVguj/wwxwcdGYCV0LfiaG4Ij2yDjBDfUW
	 jm8IVs6tWD22NDAFMxoXMlnlWrFmq2sBCbi0SyZj3Yt85YWjTefOWwPKNLRguM6RLL
	 bd+SouA4B2XpGSjZfLguZGvjMotTXgFkedCvRXOB7TU1xeR4IQnVjRFGHLRwA5TGxW
	 aG6Z58wxgRm5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92277C87FCB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478579357.7722.9932554279871248577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4098300163d46bf56fdeb0ebdd47b6b9371ea30405ffd89b110625de456adc44
Date: Sun, 10 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754785793
