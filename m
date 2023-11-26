Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B215C8B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoVjHEuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D3DC433C8
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700987296;
	bh=JP+N4INOEfnJeUbqY5084q3BQmEJ/wupnBAWIAv8J24=;
	h=To:Subject:From:Date:From;
	b=BoVjHEuDVvW/yx+8eYR8F4IXL9CedU09veADQMSIDzP5GRlTYJ86oee8RK7cD/0EU
	 IeV+RHb8ABUOoMm1M/LVKFTK3M/TUZ8FnJht1SOkHTZm0fSMLE414qww7pkHOEClVi
	 Sd7xgciUzLX959KNlViR2MoCxg+Qb4q7JVlSbmR116uleYUAZ6vGrS3PpiFYHXAtqf
	 1qc+ss8Nvu9wb9tt8o01JslUgWbEDSTPVqW7mDh4gPLMoFl+naiQSxOeo0j61HUQ8L
	 Vp9PMnJD4kdtEoy6nZKYb96jG0eWdKOtVI+Ykvum2ZIrC9kY6aWXaFLrZT2lIvItvM
	 d5OxKphQ8Jqug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636FFC4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170098729638.19901.5174758043805793969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db46998524efbc203aebbd227601d083adfad19526b4e8e868c8c37c849627f5
Date: Sun, 26 Nov 2023 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700987296
