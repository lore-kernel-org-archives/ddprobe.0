Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD0B51876
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EFAC4347C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663738253;
	bh=MqJ7Gi4RSeq1w9d03TQTrq5KLltZD3ODnCKT8mEfcY0=;
	h=To:Subject:From:Date:From;
	b=jNJZtT7cIni3fHW3fWdq1CpKjTUgDS4wdoB7i1Ug3rerGKW3CExi1+ZEI3keCkGy6
	 +ChOFkD/ZaRf3YmIuOAzPaUNbXmHjct4OBv3DPzG4yZYoHiOOMmYXDIzamJBU9kNe/
	 yo47qqigLviVFA1QusoQvNfrdNcXRJEGHLYrVZ/jP0asgx8vLzo3qQk5hR0BwoI3Zm
	 4wuPtVlgUtoCN9CaWTc8AvM0xk1yy1eJtd90fyUmFUTkEKwa2Xn+adCqRM8CrdSLh8
	 dqoteTML9SE397JpUCOrhwcVHZb24HZXvUL9b0bZKm1QeLAxP6MUvr9tYzV3O+qYo3
	 tI5suoJPor67g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 585C0C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166373825335.3117.12378181228031431292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae776205f85dae533766f36089b6898ebe87a6d51f5ca2ad2e15e35f67711692
Date: Wed, 21 Sep 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663738253
