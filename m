Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267E5371
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLBmK2K+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E985C433C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698030496;
	bh=R9XcC0tmRLQrQTy1f4l9eIqNogCL5Z3TBBvyrlwzXNc=;
	h=To:Subject:From:Date:From;
	b=jLBmK2K+KlBUIAHJguBoN+SvTldQtPN6J06MXHs/1tQ0rxtQSunf9S5jGUQnTF6yb
	 HbskXqC/zv0k1WCogETaLxuMj55JsGRpdo8ULulxUic4wICmBiYyFvqwAveffL7iL1
	 h1fG/6rY7H5ZZYHmC9kqMC6dTuEhBhJYDiq9uwtoquO4ls+tPqupT2ZbTc1dkhTafa
	 Qsrl/E6W0txuRDXZpJqHeSUkBB0RgRsiAXr4neB16V3ZuG+sLy6S1j97enpWSdDFoC
	 Vn82m5TmZb7dPebUfYZmYQ2sKoHHKAb9wfj+sF8gikHUTPJUxl2EJiKE0z/mwzLzVY
	 /FUCvjJas92Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630E3CDB474
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169803049639.19113.1715221503975903705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ee8232f1a2fb239b69395a953a33115a2504815fd947947e88fadab9713c76
Date: Mon, 23 Oct 2023 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698030496
