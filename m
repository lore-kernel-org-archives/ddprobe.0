Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371E67E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 03:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658548012;
	h=To:Subject:From:Message-Id:Date;
	bh=Hou6PVAWW5u4FnFdHNzo79fwb0Ef0uKtEo1BZegzXuA=;
	b=GX498V30XC2iMl3mIL4ro2GDP1p+2j1uTphKQAqkXDaf7tZryZNq7V+i5VREiOky
	vMAJz+OwTcc/0jBK6/hYhS6ezkyJDVx1pFmLx3/1HJEmzEzT9ARuXTFsn7sC2z8n7AU
	hPVBtZH6QhAIudSpJUIIYk+i39HCoyFmrANdcizk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658548012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hou6PVAWW5u4FnFdHNzo79fwb0Ef0uKtEo1BZegzXuA=;
	b=k+gCKRLsMG4kHDrI5yq1IAdrZZQ0B2895IFU6a9b9hwcWjF1+RaoJ+WG11eK+wxO
	Qs1gucVnmTfCvY5sTjQ0GA9oLagDexZV9bIChYHnKHb6xdcVlPbq4R4Wv2JhvLxH3zC
	ZRp9fKgrILLALQTaQPmrGp5C3d5kR07b+vGBIMyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182292a44f9-6cba3751-8f38-4a59-854a-bd821b4df557-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 422d0ebd0c934ef192b8b726fce453dec7b6910c203e74c79c4f4ffa554a60c4
Date: Sat, 23 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658548012
