Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C9F1852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 05:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652852699;
	h=To:Subject:From:Message-Id:Date;
	bh=K5OGYmhLDb7D98XI1EQp4LfEWs2M9058Nd0XmKV3mzU=;
	b=CkvnMCHheqUl3aIqAjbJhxQbOSwC0zpiWMC3JGgcOl7LuRmGYX1K9D5G/wEriL74
	2jPHo4xemKG+/DVD2S+uKKVX6ac/JfzxOZLSjM7BudGDahPYNF19+RSixSJZT0Gn04/
	FFiQiDh+D4JYMmV/jv5ism5uAN5t9yL05J851a5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652852699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K5OGYmhLDb7D98XI1EQp4LfEWs2M9058Nd0XmKV3mzU=;
	b=i56pm270orZ99Qr2GL3V2M1OAJ1fAwKOAdzMlwG/GBzHHymzmeSJuoV2D9Ge7BiT
	IBITExtpJ9Smw5Rq7gQUTQ11qhHl27iN0BmWJRxpsviZ2FNie8l85xfdRJSlXswZFHI
	uX78HUkfvZ6NpEKJU0mAclrKIwR5bO+7oBQkquEA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d5b2b089-fbcb40fe-f7e4-4c53-85cd-b9193ae11f1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a54e94340b9b2faef38b93bf7cb7de30eb2d0b0a190463752b1f7bedf5c51b0e
Date: Wed, 18 May 2022 05:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652852699
