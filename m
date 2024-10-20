Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D02E2F44
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729409154; cv=none; b=ZoXgHC7Nr9dhNzcwYTpnBGUByIZxnCPrSbcdnRCClB+kEqt1TYg4J/6lbsLqYKPRo2FXqBkrJwaO5rT2Xh7z5h08TKSRroI8w+D5jTsWhnV7Qns78ctu9xbSndbajT7aXiijRdeBI0CsMpiQQMWYp8NaVqwBmAiM0nXH2/PPJGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729409154; c=relaxed/simple;
	bh=tvRci9v9BA7wMzd8y6PYi8SPHAKcqI7HV+fAz/f1WTk=;
	h=To:Subject:From:Message-Id:Date; b=qWgl/8c75tOQL23Xv5T3J8Krggww1Wyj2ALTOt7Bdzr7/XDw3ZfPJG9pHtKNteA4h19B70N5z4MAkkr8ZhNTC4qYt7PjHEeJuXtsu8/6bhX3jP3opy/1/VvA68eLj2oc4VFvLvUqJz0g/H8e76jfNoUHvHucRnvJulNxK/zn5Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B973cYkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B973cYkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AAFC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729409153;
	bh=tvRci9v9BA7wMzd8y6PYi8SPHAKcqI7HV+fAz/f1WTk=;
	h=To:Subject:From:Date:From;
	b=B973cYkkt4uPU6kIn0xpmKc/SfXECd+rI4/nIwhwLlaBf+R9Yk5E2darJZBR2MZvJ
	 wZPiFZWhekhpstlqRM8jQsNYGVdB46QPTO4Q7Ld399JQA7S3L1rFncNanoZKfY8Xjl
	 p8h28bgAFGs4UgCq/UjdwPV9s4tL09R9sKU97OdHAklCU0FyHXGLWSxz0qlTO4Gvu1
	 Tbs+0/VkkXJgCEXJWrX4Sb7MoNowiRQfipd/KKctdDqelUlo/d3e/UJ924y0fHBPm5
	 PpH2B03vMCeY0z0y+izff8/xxmhxKi1/H4kMd+GZNxmI6vv7suHgkb5RxqVvm3Xz7G
	 Dvq3cAcW58D0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB3ED3C92F
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172940915359.8405.5549507889407808523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bbad4bd68671904ff14f914d7228597a1a798e89905b9c186629ade2264a79
Date: Sun, 20 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729409153
