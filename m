Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4045A3B6347
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782197794; cv=none; b=f5NOtX9xicvOVus85/nEnKZ9/4FQGDt3Abek2rmJHI8/7y1B7BtZX87ZJbOa/DXxkVkr01PFOjemX5jK17zJFbSfB/bQ5AYwRM0LcHQEjHkCNzOMnZOuR8EJm10JAw6QwdU6wM+qaGS8reAWB6rVPImur2b3mhXlwNAFeSAW2ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782197794; c=relaxed/simple;
	bh=+8L8NMoalh40WPKfBrPJhy8kf9hKjU2133lHgRFOZIs=;
	h=To:Subject:From:Message-Id:Date; b=PV2lekMzLoeZYRK2RMJx2ebk1DN2aeEj2Ojj9eSKt0bn9JRq9p4eD57USydDnCUnOpKTIqqtmWmK2UanLcENmNewZJb2aYdg+NhNkfFw9DJ83Z7666L8f7PfQL+W+pqY0psj5fDSP6+B6SZ2c+XuKxjGq8etQJbFfJYZgKdF6zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXVfQvHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXVfQvHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9D5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782197793;
	bh=+8L8NMoalh40WPKfBrPJhy8kf9hKjU2133lHgRFOZIs=;
	h=To:Subject:From:Date:From;
	b=UXVfQvHCY0BXuuIQqsyk3a1djfu0Y2bVYsYrJF1ZpVMvgzsy9RQiI3W1O6xPiSfu2
	 b71DiHGPZ90n8+R4+hSzO5rWwjajFRdpQ5gZG8gl3PUNqhZO5AkuvFF7K4ywFIF0Qf
	 XZnF9KaVTz/SLnhzDyI32Xgwh4B1OcMm1iXriCe9KNqS/aHA3b2eVD8bqr/GvX4bWb
	 VVw+Arvb4pRtRAnO9TqRrqmCh58dw2AUUA7Py+WBka1590EUBX527+Zh/q7iqONO6o
	 0bBxer43XgbZWewlkvUGfC6tG9rkaO8qOzTapLxpFxMMqQkSPlGvjYdweDSql3nodr
	 O5yjK7o178QKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B134CCDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219779371.4343.3477827918301406097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62831784b70fccde6fd325984c541f87744288e467ebdf6e062b7ca8ae617943
Date: Tue, 23 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782197793
