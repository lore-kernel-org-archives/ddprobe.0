Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0919189B84
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781289994; cv=none; b=h8a/JXdLuQWFcTE/TqnI1rnOyRlKV6BGiqYuDuTwL9SKvZJiOBhTPTDpOR3INq7D7kSnNM7UuOnBV9k8qtjtfny4cLeSb9XHpti/S3IH6FftkPaFXpYcLb5IOUtegTjkp3F1xfqtk3hICc2oIBnlZKOS+vGmyiCfSlo93fR/I6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781289994; c=relaxed/simple;
	bh=D1ZgjKq4tQvIzdTCgqFhGp7xW3YEA7zm5jSwCOe+bp0=;
	h=To:Subject:From:Message-Id:Date; b=hRivIQ3lbj6iqQ3YPGvMo6K/hVu4mTbIrsS55wrdBhh0SHS0UkHsACvHm7RHH+/HLxRQlsKpljBP3mpkrsNwpo6VMMH/risSHH9Wjf4rGZStZC8vnSfUGMzcvQlqmkh2z0jHCROSxJLGLye2oRsV+dKvbCGyNL33ozgMuY/z3Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6u9/MUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6u9/MUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB87EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781289994;
	bh=D1ZgjKq4tQvIzdTCgqFhGp7xW3YEA7zm5jSwCOe+bp0=;
	h=To:Subject:From:Date:From;
	b=X6u9/MUfxVXFiNrrm4mUcxYv82ZZp2DQ7QqskYpSLKPnvpQ/95EglrPb0BnkWic2q
	 7+neP6QzM66J8i/qMY9vv2HRFJDASvRke9RqzONvUECoROKQpURXr45lLKAbKJbxvb
	 8rEkOqZ1RCCKjtrzRfOGq8gDfCKXLAmVYGIEb4bCXzkB6nm25VWjSH0QqJd4Fx3pGr
	 fIbQMQbrXSmwzWjZEgHewe7ZaQh1oy3E48+McMDprVmUj6tr3LtgJglPrXGRBBHR/s
	 rhvfQtOuK057f7eBA+M1y8zA6F084lAC1d6zHoCenUolgdqioXSKSBDztluGZTumBA
	 vO9CgHuTtqIxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9832CD98D2
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128999368.6803.17353387695928625565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3def91aeda99f2572a81419fe1dedb5548f9ee4808ff2ac97b810af42f6a8646
Date: Fri, 12 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781289993
