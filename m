Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3C51E49F
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759744794; cv=none; b=rICFmAZxPUe7zgPVLwX0QMRv/kInw2UeGs9yw5vxSQozjltpqShGqxC/aIpOIHqcfbRVZmPSfSn0L3qdoYJBNpix23p39Mls4aYLax/yd0P9AugP/+qIHbQMvjn1dqhFuyJVG429SKLQ8OYWjP4slYlBunZ1Fwx97gHaZyhpdJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759744794; c=relaxed/simple;
	bh=iLqdKXklFPiAc7Qr3NL+U0j9Lsu9TE2nxCbXNd+C8n8=;
	h=To:Subject:From:Message-Id:Date; b=CJPULSsaM/tAywLua7gPgYloMXQuIMDerPk1uQOMy38N5hy3VlLxZzbTVki5Ao0VOvenFFBQSXwhs0QBvG/vkP7iadm7tn6VVvXC1CpxrPh1LCC6IjSUOlU12ESJ1WmK87tS/sDD3V1bqQHXFA450ERY4vuuQ0eDX8Jpgu0gkDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbCuCcny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbCuCcny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F41DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759744793;
	bh=iLqdKXklFPiAc7Qr3NL+U0j9Lsu9TE2nxCbXNd+C8n8=;
	h=To:Subject:From:Date:From;
	b=CbCuCcnyyYfTectUOEcGMgTMQRtf6+UKD+NAp2bz7xHNgewsWh8rirxk8NujswZ0F
	 +WsEhVZ+b9jK5/nXDobS8SDcQ9sb092jUIUv9DUsZLOtZM0qr8QcocDoVlQBCi0ABG
	 5DflKlhpJXmz4LwBeT1E/+y0TMTnHDZ5mJ/z7QycUWcPMJgZPQkD0hyA1n3K3QbVVN
	 4T/oCgQozixMxoVfLGO4sY0+dzjis51Wnz4BHwWJ92SGw8eMvOVneixCh8IJSFWJDd
	 Z7BQQDyOhbt9CRr65JSl9lEqjK+I+J58WDluTR7wmkZDi8f/q2my2q268tb2BWVUHd
	 av0D7JmHhfh5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F01CCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974479357.20227.7891540268280914462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97e027ca5ef7215829aa1ea21152148c87720cb425009edd66b138e24e4cf84
Date: Mon, 06 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759744793
