Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1DDA20
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658893252;
	h=To:Subject:From:Message-Id:Date;
	bh=eSY/vdW2j5gS2lGPkreL8rVVHVgFp3S5cfe4JHc+QFY=;
	b=A1h/lqK1uHg7mT+8hdrckMT4s6S3vUf840ZzbTpX94/YCLUh4IkDhTUFigz1dAJu
	B+njCtiZbOlkX33gD4LzzNZZRNeR79o/2AUbhZMD+3O5JLC0xbIr/q28nVLq2sybXeX
	MLBxijZCmKDqeteMxFPYGVU6NZopVx0F2RdNwits=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658893252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eSY/vdW2j5gS2lGPkreL8rVVHVgFp3S5cfe4JHc+QFY=;
	b=TBiMQU5JC6QrXuq+6ebuU5F/PBiWTxZyo+DsgsDIgysLNpNU70LuFSV6siB2CMco
	7XpwXYZU+cEzHGSQt6OfwbVXezmP77jUX/8vSGP/nkwwfZgBi9TzY7GBAVk4TJkjLnG
	1KgtpY5cfQt+JtBb77xv9U7eSCuFTEc3z+dRWGdo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823dbe37d2-91d7b909-d560-4a98-8099-947783adc11e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f479228dc64f66208966fc5028037ca23ab918f044b6c8e8f899a797068cd94
Date: Wed, 27 Jul 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658893252
