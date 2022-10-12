Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B233C00
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78998C433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665604253;
	bh=OGLy17y3AOczyW16Bu7FiE2qAtYo1WSiwQuhs8R7xD4=;
	h=To:Subject:From:Date:From;
	b=n1zK+QU4G5PTqesUCs3FXs+Rp7vZt5klbnDv3E+7vQsTSAFenZDFs4pRF5tdkRm20
	 jdaclyYBi7SOf+q5+w49tk7VjSgZLDIg1mF/ZJoplWA1R2h4x5WnljaoIL1w/pGHar
	 ysLkbsGdImHlvB3u68jfuK81nlnU4mGrdVLraVuAQ3L32GJ+xPjhaRiDtkbp9px5Db
	 hkjNXquuNYV2VnmwME6I0h7cFRN4HJs5YLOF2bgJma+YDrVDC+4qy6ueGdm94vQaM1
	 Lilpes6vmbk4uXrgeeYw6LyM2Nb+MB7ErwIDkKSm0PsFomyv6yJnBvd7u2zT8uP6YO
	 hQ2zp7T8eZnQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50BDEC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166560425332.31378.2498981784050741448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65cdebacf534c7f97cc078c3b423caea8d6b22e11c90be98a58e010dc86b67f
Date: Wed, 12 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665604253
