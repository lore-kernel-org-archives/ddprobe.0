Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56BB212FAD
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777897054; cv=none; b=Hpomene9183p4BN7XELQHoTuv4DfwWnj3lGMiQpL1RzXzXs/yH7vNZZt+J9HojULLtmcH2fM3sxoC+FoZBRUpUjsJFMcgzkHGCBZym0nX7quGVlMTTrD60uekdTRS71QxtQRi+lXJ9ResjuRJ2V+38TnAqYo+/+nFa/oavLd/eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777897054; c=relaxed/simple;
	bh=xNXiYt9JhcHSyxnhymyPFKxip3woNJle4A0kydAeaE8=;
	h=To:Subject:From:Message-Id:Date; b=tfpk/TPWS3wWYi6yGsAuE1pq1wQcm6TvTjPzRQHNVNSusyGpKuLEEgEy0sms3+4JY+QanuYLBBNIc/2CG5r0lOUYuGf9bFJZ0BCZytuF/OATV72N/ECfy7CelsW/b2g0syznWJPPL/QjADDgPFUc1De6NVcQhyy22ZLe8X5dTzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeKq1l7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeKq1l7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B812EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777897053;
	bh=xNXiYt9JhcHSyxnhymyPFKxip3woNJle4A0kydAeaE8=;
	h=To:Subject:From:Date:From;
	b=UeKq1l7BLmM8LWKVQh3hmNvKU7EQpVvgaqNI1VLoh/Og2naide4pbKloPCrxsploy
	 iGJLf/FjoZfApQvhncPzTKl1wpnlP96e2Repjr9bx2/zMXBMfduUc+LyVAuugnFQWE
	 6JTailQ51szkU9o+kbZrtkpRfWBmqxE1BxUA6YyOF7aaSXxMZePFBz0hL7VIyZm2be
	 oRMqxIlaMCZOI860wA2Vdh2wBG6WicyFFsrPxMx17pWhRKbvBm+k1DjR76j9zkazZk
	 xkXXHvTwAbDBwRPddyWBxhhRHisKYdoVE+IhU4G6nWfeXFnu8tb1LHjbjrcovZGdZo
	 eQZvBd8x8IuXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0DEFF886F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789705368.22823.7842869425015469139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6864582a2be2368b8fc94e66db20d3e7240cea7a9e267082a5beeceaff74efb
Date: Mon, 04 May 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777897053
