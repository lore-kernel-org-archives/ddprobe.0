Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443ED46AE
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 16:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE6C8C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 16:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678639626;
	bh=yhHy/dQPsRfrnlaXMnAx7GVF4JybOK8C/v8njUmcfm4=;
	h=To:Subject:From:Date:From;
	b=DEuXYWBVPyi81jZBOOxKFs75K81tB+EX5pasc9KR+7DChefqAOFLQ+UDJLB4d1bYG
	 Ik/NNbPONLX1raJjFF7xVg751ycLwBX8mZ6EBTkrB8QGu6lYWZ565mZba+awil+5ht
	 TwZIqAJaZvzH/XizENWSeRd7snm4vA6bJGW+vBkHttOu5InQrUAgUnPEq4T2zm+8DY
	 frVZ/g90UMU0rdo7+MrnoXm9cP3tMIZcfZJ4z5XqfuvbVia7xjfXfWAd1BvG+2INMC
	 IM2j3/BaZrX1LP3A2H5NXc5WNu0ovaO2uYM6oX/7nrijKeTCkLmAz2t59fwjuFZ3iK
	 mAHotDOyc/woA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D493BC6FD19
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 16:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167863962586.22655.18393772949029726719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374c6a8578229992c688eb16f49c70ab9455481fe1d3ebe91b8a65f7c6543fb8
Date: Sun, 12 Mar 2023 16:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678639625
