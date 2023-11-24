Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF07F241F1
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNTJ7GyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B5F1C433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700828296;
	bh=Gufv1xl5TnoZQ0grd5Q1NFxJBTKuexpsiek2FtJsRbw=;
	h=To:Subject:From:Date:From;
	b=TNTJ7GyLuscjIxltilBjH68Plbid1b+5uZblaahp+n3gxpeVbZUR0r+WWfGodoEyE
	 8/VxxbFUaX2Xd4n2sb7N8Q3mYj8vA1To1YuscRFJKcwllIaGHVUMQO81R3P70HcVZE
	 b8gpsEbls8JLr5XGJreyCBAVua66qKT208DaAcxr4ykuejAHTtWzl288ZEE/pjiVCx
	 JWa1CE9gYaBR3M/de5NcVXe3r1aJgMm0eJzxt78MnBzX+unA4LgLuCS/x9biuhiGic
	 aKHEyjefjFySwgVh2wOHZc7ofGEAAM8oC/YZ5r1GayfACTx8JMRW5CsRKYgfBnTwVK
	 SIs1bA4lXZe9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60243C61D97
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170082829638.20555.6345856329935737211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42aac940706dc5aa3ab5bc009da4184cb5423906974d803a7d899b140f2f1d0e
Date: Fri, 24 Nov 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700828296
