Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A8A7E
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 02:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0895C433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 02:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683425885;
	bh=2RmnsAKeB/CbkHWufyLC0f3kox7owTO3VmjM0Zd6/Vo=;
	h=To:Subject:From:Date:From;
	b=p10NnJGwjRu5VX3eiSw0eoxYK5brbtwNLLuss3xBEmBA3zpkEJuabTyrj/e/S/b9j
	 8grRosMy/zqOiKqQm5NvB5qRAoNGv8k5ABnse2sCEdRBttGveRBlj8L2nUyZoidoRU
	 UJuQfsScWFCKY+3tuD/m1UHFC/47MTO/Vg7hsDVkyEGFM8KzkrDAFcQELx/16+GH4Z
	 Y50UBdPkw3GgsOcHWAbgN6ZLOdGm9xxypbheGjWztblY7+0CSkr+GAm8kKnPieSlfc
	 /ECjmYMxCaX2PTCpBWNjSd1Fe/ozk0BqodC5lWI4XgvhoyOVzyWdjS0zijU9rOfcnZ
	 qnmhOsVhCLbMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7C3C77B73
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 02:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168342588575.4975.2616202976883931618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c241e30c078b238c0853effa2b39d4f88ba0607556b675d2969ec842a257d0
Date: Sun, 07 May 2023 02:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683425885
