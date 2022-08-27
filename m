Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C2815A9
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 12:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D164C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 12:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661604052;
	bh=T2U467Z0XW2rWt20ko2rGWYherJPYdkqX2Aytk9yiLc=;
	h=To:Subject:From:Date:From;
	b=Icrkn8Y2txub3uSO46VKbTfDZVmhGkG9OHAj7/kkYXCNyX6/xhEwigabKqfyCAh3f
	 Cef9qGN9Yil6tJ3ucrPqvSlPWMEgoeoG5UEucgGh+zuGYx1ttYL30AsOOehEETtWg6
	 MfyqVQbOetnPz8Ih+8rCKoqGHVPlVbY3lUwka44jM0Gtld2H8ygaOZn4QMIFqDqxBD
	 2OJ1FkkRisY2rvj0Qt83NtnoF2nfsRbidskA5cNyAJFxX0rxB+DMD2kUsf+JpZMZVJ
	 rxbFvD9H8UjqUQYtN+zuRqEfyPuQ0UXwiMMFtWO2Xd+D7QuokSpTQfUHUt5PlsDdAv
	 Izb09fKhQAb4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564A1C0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 12:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166160405233.28861.15826706845179668837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6fed41a080fef8e0f5bf647fd79637cfd4f2ddb6c3be69fabdb8a24a067a7a
Date: Sat, 27 Aug 2022 12:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661604052
