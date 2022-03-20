Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A28C7A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647766884;
	h=To:Subject:From:Message-Id:Date;
	bh=M8kHHMptEBd0CrI+gjvf5Fp7heB5s1YhAKzZsantojs=;
	b=Yhx7YbB4kh+aa1+0uKzbjrvrBTK5IclY5yBIUfnx2UA7Jp99kN6xA2kB78aAfqFh
	Z9X6CiIEAEuauXXm/qDKl7hGtT3zkyFvL7wYyjGZ1binMtDti3c3CW8Vv5ekg+RVUXt
	s1McoSsYeWhUo5SQbtUsfKm1bHiXbZhJp2ru//So=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647766884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M8kHHMptEBd0CrI+gjvf5Fp7heB5s1YhAKzZsantojs=;
	b=Vq9+pQZ0eYJrznX06g2VqUqBT/KwHMzwqt1tmqJYkfHH6APefZVjzwnuzvkZwEl8
	eUn9/TOTWu7LasCryq2Itzpgq0Sglmre4Ziommp1CgSEHMUYkUzThMusA5VTdRVqsUB
	vHOpKaBuPY/Pjkm8HaKtptuwzMENhspdZpLd1NQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa68f5186-3a710cf4-8e26-49e5-8e42-187bebb2d54d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47b554b901852047b80f0d19f953e9d261241f10e23ea407b33af59669a412d9
Date: Sun, 20 Mar 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647766884
