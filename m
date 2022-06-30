Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10938A46
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 08:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656578812;
	h=To:Subject:From:Message-Id:Date;
	bh=5lOKP+5zk1/VZ9u1TQhwuHUCWorn+nxJkD8LWnzAsQY=;
	b=cGpYubiXCZlpYjqBANV2MmJUpDW/7T0svjTBl7vSdXECTtcqKqL+Rl4zSegnSRwZ
	NKcegTIlElP8szzbtwKNV9Sfur9PUDh6YdGAC+DN160rBbg1sAaxXyup8kDlbR4Hc07
	nyoIhzvo5XHCLP5smRon9eNylNAoOZYXqpxmOZTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656578812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5lOKP+5zk1/VZ9u1TQhwuHUCWorn+nxJkD8LWnzAsQY=;
	b=F9zShxHseTLg4sH0sWYm4FXzAyfDAABtKT0aOXSbUeP5RcoqKGh1r+54ZRhkSM5y
	jzJv6+YIIgNB/mv59C9EJInya6GqhUhe3O09A2aVkXPfuLAxHwNO364SahwmwhiQRge
	SheKWQ3cs3Qhp9VAxSczdCY8scwrWEUeIIteyJ9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3caa995-f41c3489-002b-4f99-84d2-a504c37c65f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a305c1e7ee8a1c8902d7d59b732d4aa247dd7eac7aa6c46b2130eab632101ad
Date: Thu, 30 Jun 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656578812
