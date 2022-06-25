Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E637A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656145612;
	h=To:Subject:From:Message-Id:Date;
	bh=Do/7TXrM1edYiU6n9Otb4NXzw8sxzMn7pSultDT9RD8=;
	b=IuMYI1vL1X+4PYq8p7Hdd7QruLVd4jGXlSfrJBZ2KDEyUh/t0BTewPMVEWyI23xC
	MxHRZyXqGRlTk3Tfa1DI2VWLqTllyGEiFGaAj3yPv8trO4ces1rrT+pEKabhZRXQJmY
	MAWx2FA4zpHNufZamH7P+PyR8iQfNnF6HwKtzLaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656145612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Do/7TXrM1edYiU6n9Otb4NXzw8sxzMn7pSultDT9RD8=;
	b=FBh8GZ6/Aivyo95OH7mvY6uB6fB92lxEyBl1C9mky0tHBLHTlGI4kZLnntqsYpVe
	EZGtWfGe/dpMdPFUiolU+TgCrRsiRntKXpGMUZoUm4VwMlc7O0WstZbjV6PZbMJmrKQ
	HabtN8LYGjG9GlXGcNJfrEEHFEHjLrAfVNWOhQLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199f88ddb-75b9ee1a-91f4-4cd5-b4a5-fef466717f6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e551e17120e6ff9514a4d0ef1c1ceaac2c5b78cf802ec292385a3f5e33e10d03
Date: Sat, 25 Jun 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656145612
