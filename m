Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3748443DB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 05:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655962379;
	h=To:Subject:From:Message-Id:Date;
	bh=DQ211s3VhK0JYViJ8atL+RapAfPGufuAptYsz6kLy5Y=;
	b=Z1HuiE74ZfGDPYhHhzKbD3ZnUTFIAqmZGW1lQFDke2wY0jpN8cWJ5ybGF8f8s5WD
	oHTrqx3dBPQHhWcNd5kyDk3S7fDOfllOtnm1XZWIZcx9nbXpHSS/eb+zAROhZzfCrEL
	6t2F0wpRmh5G1A+Gamug9HEfu7O+pFdQ0ZbzYQ94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655962379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DQ211s3VhK0JYViJ8atL+RapAfPGufuAptYsz6kLy5Y=;
	b=JU/TXtmdvRZh3nzhf4UEC25PubOXEyjQSTAbhIW9nt5rYppPJvIaSevGw8pAJxdS
	wU5Y3qet1FolLT3bJu9m5JENN4ZAwcGF6fU+xTpeSzmh6a/yaMbohYVpvUnW770/lV+
	S+q28jZlDb8GkfrMCVgEM6LsXIja+6pRqxzxKP1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818f0ca3f8-aa92230d-c97b-4590-a854-8c6803ef8dd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 908bc4807cff65d8b62147a3eab17bba798c5f37b72a7f535107391524c34526
Date: Thu, 23 Jun 2022 05:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655962379
