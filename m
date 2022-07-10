Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2666C7A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657451812;
	h=To:Subject:From:Message-Id:Date;
	bh=QwdSnWkx6UH35yzvMXmN8pJ0FfnYIRrQqbiTAXZbAYs=;
	b=U9ZJZKIOae1ljELasSMQiZoZ3aKq5qzuzQwd7saDdGiOKKNv4s3Wt0pLkqM05rPG
	PzgY95BN61mUojAW6AQ7LInbYAO6qRAxwH0qVn0WvD2D6hUaaOlvxhtDjM2H54wLOOn
	3Ei+AM2Qci6ZNQOkS+iH0XrEsQvvGDeIu23uf55g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657451812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QwdSnWkx6UH35yzvMXmN8pJ0FfnYIRrQqbiTAXZbAYs=;
	b=j6ydNzXksPoQv9SB6XYoKRcF/Ob6w0W4KF1L7Xwr5ySMOyKkYQu6WWgyeP+SQ/cK
	NjuMVnZZhMecWzGirYo32VcCm1M5oSxbXgXb2TSKcLitiYxM01ZvA/A0gzZshTj8PrX
	PO650ZxDDfZJ1lz6K8y93QDYv1KWmUScd9nL//Fo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e7d395b4-79995132-a23d-43f5-9029-023f2497cdb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c93fce09bde23efaf199e4ee7bb825434cd6fb69a38e5012a06b22b0b9cc5847
Date: Sun, 10 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657451812
