Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC809372ED7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776796655; cv=none; b=ZXB1GB5dve25O1hx0zY1KYPVb6s6Ppjm3yzK3f5mqP1QCfNHg3Nhrbbd9MWjHt9X/fLsCBkVTMzKxIMgrHvBjFUKGiDflPV747Sg8115MlG1crXJRvcbA7Afsg3brod8l1p0X8rDjmhacrSWuzF5l7jJBE/fSl0S6rQUo3Mz1qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776796655; c=relaxed/simple;
	bh=IW8hb4Q/XQYoCXd5yt6nY1YjT3szWrV+c4EkDldr2iw=;
	h=To:Subject:From:Message-Id:Date; b=tGRmIKF1eVIyCmZoPCrRsLWcjt6jG58myUULK+ou8fIqlPR5vKZFFitY/cXdWAZsNNHVhI1voaZ1xFKgwmJtqL4QPjVoU7wpnMcy6JVGwd4kfDw5GZrln3OUfV0LDsGFafHcV8TuumpVjDKIItmeL4NkZb5551afsaA3fLEUeU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOfOO91D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOfOO91D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE2EC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776796653;
	bh=IW8hb4Q/XQYoCXd5yt6nY1YjT3szWrV+c4EkDldr2iw=;
	h=To:Subject:From:Date:From;
	b=KOfOO91D3XlbpxG7PMNHdzM5+W0hVIIxDwgxkRe7JwWs+QcmbO6apZ1SDJy2O2BIY
	 9dMVlUZO+UCasuEX8RRGUf17/7RjwByFURZpigvSBhppSn2wVBXXgPsqjBY4hj2mbi
	 57qgh0PmMeDug9EYZI9OlpbbC8uFjKXHaF7agwKvuS6BUZd+RESJer/KglLs1O27RQ
	 XCHme0d5ZcLKChvY9NC9ZM/WUE2ABspU60qDy6euxuqbDDCAYN7GhGl2NDuszLgjgP
	 /c5UkNpBqdoXGKI+BKOzxytDhXZhA5yAgVFWRzrqzE78bPz+xSIy20mLbE1JWlmzfn
	 PbpmsMPJp+jVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4F9F94CA5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679665368.7736.5133950405345320201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d878070583d4eacf4188cf999355179500c7af82a01d323a286b18b19fc69c3b
Date: Tue, 21 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776796653
