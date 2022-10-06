Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD596627
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D126C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665021053;
	bh=OBCS3+CTEjq+yGd9MEy4K2RkdCf1DMu15gmuEzYZnNA=;
	h=To:Subject:From:Date:From;
	b=dSmOqIPJ1dekZQmQw0flJdKO+09COrsQlf5/ytDuZu03nvaTOCqW9N4BTHfV2KC0S
	 EO2gT4kxIjdehDc/Z6lNn/35H8F4IwFzLOISrXh/CCWq0D507wqMNIDSuCgkm3nMAS
	 m/gt/a224ZUMVUV+k1wuMeDU1Acf/c0+FD+2P94mIn4OufqSjL5Lrdqis7cCH25J/A
	 QBEyfh4P469v7Qkb6JMK4M3Pr+ZdyRzvi8A9rUkYCYcTcrj4UbHKm/g7l3zV7c5WzG
	 mGqtPRzVdN9CCOIZOP2gpQwIhwGgd0x6zy1P1kl10dpTjyUBJvIvWU6ARCrYRgC3tQ
	 LdIX0o2Nvliaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5499FC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166502105333.11779.4259070489577678240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12ef1a1be46ee9c10cfffce69f2c45a4abff785e2d5d683136226e05fe2cd5b
Date: Thu, 06 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665021053
