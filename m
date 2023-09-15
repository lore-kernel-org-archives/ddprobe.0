Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E68E10949
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 14:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C666EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 14:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694786708;
	bh=KwybYPju6Isus2wASJX4bq09eyx7k+fEdF3PDYPKLNs=;
	h=To:Subject:From:Date:From;
	b=rXQmQIHMBMIc42qnLo1WupbMpYgkmTbwgHf3Mq1eY4yY6/4xZW0rho4b61Fyc+iSQ
	 eM5Ht1eUKjkp/QD3kkU5CtO/svAEw1hWYt6dZS+gyYMdztZ7imAxAIPWmoXa21vvaG
	 mltL6u9NS8K9tq1C8E86+7Cp/7ZbFwkjHaSPYuirK9fggwcrhJ2ips90H6yWmDAwfX
	 nhQRte85PIaQ5dfnKzHgFG8//6V22FJU+gNxfxe0+WeJP+Ize0nBpoK2BxO9kkRPM/
	 NBOmyTjP8YmzjAz0J5WLFHZfMpsOWavL22YcJxB5wdkLRLYUAhT9d7P8Su9ezVCTMP
	 UD/MpeeVwMoVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB986EE6457
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 14:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169478670869.1084.15536612817570762189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f03dbabff46fd59cfb26b2cce4ea2ffacc5a6f6032a0be935ca275c4b9f6d9
Date: Fri, 15 Sep 2023 14:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694786708
