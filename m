Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE9A10E5
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 02:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC848C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 02:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679365085;
	bh=GnerA3iYiM0PsGhsgPB3Ihd1NnRqsMKAGhYQHUPvgkI=;
	h=To:Subject:From:Date:From;
	b=rhSXWsJ10zmcCAHx17U/36OaNrQujWTZWTVmj3DVxI4SJa/0OneiIvRpQ8VlKTfyg
	 4wY/AXGaG3+iYkCYJqom1LINyQ0CvO+b7dxdt355sD3bKQFhUfLTSeO4oH318hVI0r
	 VbEE8iBMd9xPA8TtpoXcbv16Qqgfq9ivi1Q6In0vDmXll97WoJ6vDCebs5ivxgM2oh
	 MxRKKkiam+VGXAYnGjEY7mv9IKxIdYYUlW9t4Z0stjEgfZ9oBNWprEbUBMt+BlzDWV
	 ZENBHB2L6gwJzgbRpQtruVacXKqeHJnWCtOtgi1qEmJXpZp7dTZbghdOC5Ap7GQTHN
	 bvzUw2XCyUrWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03ADC6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 02:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167936508577.21673.9534074477223594420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948c21f8d1e678edddd6c4eef61973a2b7b1e8074cbb4168e52b54577213fb98
Date: Tue, 21 Mar 2023 02:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679365085
