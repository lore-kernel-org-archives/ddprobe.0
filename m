Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AF77A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659031852;
	h=To:Subject:From:Message-Id:Date;
	bh=33Ub4gc43VpO1eAWl1m/9cyYhOQCshP4sFHif4lnvpo=;
	b=hcRjRQXVkVD8hKTeDclXiB7ZfpCryqq6+N6/Y7x3khqXLhiknOq1PxcrTuDR2s+D
	Zf7DntycYFXjdzYt8hud9157CBez+BKjDL2mGYb5GeuefVBAZT7FppV0Wd41zMiLHIS
	++AjUOh5ffAwhNsrHHsrqvIvcZLXgImp7RfXzCHk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659031852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=33Ub4gc43VpO1eAWl1m/9cyYhOQCshP4sFHif4lnvpo=;
	b=EmbCv+RbUZNLBX9DnqyWUYQLoECU/xYy5N1AXI5zDQxGCXGZ1UAgbXgEaFRNClqD
	T8+Fhl9qDl+EF6XU/f2yfB+EZxbpNVVconm10teFuzn2pNjXWqXXqFWndiBYXMAtXeX
	iZtRsC8aeelfUJumPtmIjJ84itFzANTmNPb0JriQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246011673-cb8fca8f-e941-4edd-8e89-3b8271b4ee85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7285252e847996c32e0d634c04294b5100bffce8de4fa35086676406b732c378
Date: Thu, 28 Jul 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659031852
