Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A075A29
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 09:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C84AC433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 09:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676800626;
	bh=jrQ315VW/cOwJulC8/DcS6JERgDcPW2/2leJOg+wmvk=;
	h=To:Subject:From:Date:From;
	b=QBEyGSXIJHwTQdIvjtpZ4PAwm0aD4TuiAoUPaEad+j1fX3y395p++s/1vxBVoKLiM
	 ZfNhbS/KuHawrjTHi5jnJY/JCC/xkDseSs+NDrLLrmTtt4XMridHFav5Haei55saWA
	 WP7ov93WNl67DRLOIQVK3bBsmpdsv3SSCLv8hz52hvLKM2csx1PG7531Y1ifLsnFYM
	 Ns0QDw4vTWY2ByqY7cZ2eQrSJrqHgYebe9qon6a47it5DNd1Gy4eVnoKNkGQUtWqhn
	 FCqKWHCvwg5CiPdqn3RSL+qt5B8TAcPfoVOrtuRAF2sGG/JkfBXpc/dhsVJJ8YideX
	 hMNcfe3RBRWlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CBD9C05027
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 09:57:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167680062603.8572.17826336529965501303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df88fe7e1a198caa8eab0f0025a63439d8dd3ac20c246f4bc4ff5527be9f8a3
Date: Sun, 19 Feb 2023 09:57:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676800626
