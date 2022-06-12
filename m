Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E990A7C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 18:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655058479;
	h=To:Subject:From:Message-Id:Date;
	bh=3+r+y3ljrhzzWWexSFpXnIHQDfYig6KZP7G6qAeTVmU=;
	b=leF33vWAjjshYQq4xQa8WMJYqAHidIN4EpmlWTWWyHmSG3V+HyEmw+Ym4lWNVeVd
	k3hvlFwD6c1LlKsk0cR90hLRgpQCJ1ylLHcy2uBVqNhNh6x13z76tCOKD3kyi6LHXJ1
	mwxJnUDyO5v0hXjJvTzT/MNjaHcxQN+f64gEIG40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655058479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3+r+y3ljrhzzWWexSFpXnIHQDfYig6KZP7G6qAeTVmU=;
	b=BerbGCpsirSMyd2j6hpx8ALIfzepe39yfF2EJ/ANRMQBeaRdXc0CQtT4NXlZZFSO
	ypnlrlrYF0+WKsyTL5zQ0drPK3LIQiC/L5eli42CQZAbJHQI18LO2nIENh96FaFaUkT
	4iD8nAPGuBz4XcW24QoYt3IyMWYAtmjsMGRhrLLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181592c38bd-b71247d3-c394-4fb3-895c-95fbcc67748e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6879b3fc037716524f571620a5b646e6f542696fc069208e411adcd86ffc018
Date: Sun, 12 Jun 2022 18:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655058479
