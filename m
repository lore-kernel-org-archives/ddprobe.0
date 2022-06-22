Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E865C3C27
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 23:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655942219;
	h=To:Subject:From:Message-Id:Date;
	bh=1y5GKTZFCSXKUlDPZBxEOoixDcQ+7/ze3rKIAKBzTyI=;
	b=iLQnOFm/Nk2iQpPVitlW9D4DzmddXyZmAi0S5RiYllBXqzfls1Jv4ICaTAJZqmEJ
	uYg9wChPT3yBJy6dZX2YsGkbLHQyWtieonV11ugjbBuxmpfmEZ2DHfBk6+ssaVyt8w3
	Zi7ipBCkYuL3z2QUthTBLIq0fQwmM3LRK8xJqye0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655942219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1y5GKTZFCSXKUlDPZBxEOoixDcQ+7/ze3rKIAKBzTyI=;
	b=JF7ZQmpJbxgObZViHiZYU3nGRQihVAVM3r/cliLyyTf2Vo419sqmbMc+/L6jQ/QJ
	JXHbQBMq2RQSkIG4OhX2C/MQIMJ5Bi1VTmL/FfnwW96QhddSslZ2io8ZxBQ3Lk0lXIB
	Yk3f9dY5xvLwlEUMZZKl5eEczJwLJLGPL/MrKxFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818dd9061e-47cfbb9d-7273-4a3c-8e24-27a0a5c24cd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc504b2af4d56c98946f66568c8e6ae6b33bf9c24f777d4b5a268ef602eb6b93
Date: Wed, 22 Jun 2022 23:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655942219
