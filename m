Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A56B3A7F69
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775739394; cv=none; b=JfCar0yAtbnokG44pbYqCRiNFLJxXolg+c84fKJkyURZPc+DTJNj+er/f84upmOgE0ML32v2HQ42Y3XFQazNKfBM1/y1QTJlYmg4oYZqhL8WF668/a7PL02U2xjmq1zsYRxaVTnVZzGGT+O4UoCiaJCabHj+b8Ypt4O7j9fcPTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775739394; c=relaxed/simple;
	bh=hbzhPe9/dU1LUkgCyNHsq/WGsk6dXa7XM+H2J4QyzlM=;
	h=To:Subject:From:Message-Id:Date; b=J5MfZU9EeLKV1U7RJlHQguTK85PG7c2VgTgtIqEYjrpuIZNnUSbheq6eNLVlUYm3AV8BQkMfWNv1M/X98IPFnVDmBQt5wdTt9jgCqUI0UH3/fqgPfPykroneKk2/hVf35AnWn/Ka1qU7Cm8G7eJ+kk7dWUYcUjJLZXf/5YsVlhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuTy3z9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuTy3z9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1EA5FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775739394;
	bh=hbzhPe9/dU1LUkgCyNHsq/WGsk6dXa7XM+H2J4QyzlM=;
	h=To:Subject:From:Date:From;
	b=TuTy3z9rJ41XalaH62VfLDOHENxXptPII/UyyeLUw7knWM3F5qawOZHsN7XGPVGKd
	 2DQeCykpZjGn8w6i6q9zLK3tbaekec96IoougeedKzlLr+W3Brm/eji6Y59t5Y306y
	 /wUimVtDFsU0WB4k3R/3LLErON4u4icQ9CRfSqmvSyb9nK/qNhPlXK5/DAN+OeQk63
	 jqM6wIlswRDQNKD1RlXzbKIEYW4LTD253aU7uzpvTK3/1RpAogUb+pYpGUxvn53FwN
	 V78H8VARAgc+SIRpEd8ie8lrq3erKKfR/dEAcdYiZQR90AGis6JRzfd5uL5p/SKcal
	 KWHf7P2qMtmLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E57CEEA3C59
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573939392.1095.7772334480670517802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3398640fd208037dffa0d7b45989fa1da5921d209dd18dc0c4166503d6952645
Date: Thu, 09 Apr 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775739393
