Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F60429A0
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657714612;
	h=To:Subject:From:Message-Id:Date;
	bh=BLfvlGB4OVQzPf4Sv/D0TXzzVZkZRt2AIGtBNAcGL7g=;
	b=Fzr9EGiazMPZbuVeAw17YxswMIdCDVdqIga5SCV7fjl4QhkWlCmNDohaYajjqa+1
	M3ihnP7XqynwmV9KN8UprevPDO5VLiXte82mOYFl4aF9YAXTD7Di7gZROhToOcmrcTz
	Wpo1aWmLzYk6iZbv5q/xYUtqslqeLMvko1bo4NSI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657714612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BLfvlGB4OVQzPf4Sv/D0TXzzVZkZRt2AIGtBNAcGL7g=;
	b=DKmpcoRIKywIxmV/ILb7YmHr1VOUCPKX6zrIeDO9jp4ttX59eNxzK37B55j+zTnI
	QHQ3C/WubXd0OC+uv90grItRMx9X/hcLhNVREwoEAZcLzKQOihdaq7HIEIuF8SiaPYc
	YjEdgiIpz1zDKnRZbqpO4clVzCgJPFXmXe1EXjgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f77d9869-8b9f16d9-1087-42fc-8934-474f64831c98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62c99a7189c60829f285f81a0315c36f34b85585f910fa3c6239e83417304f1b
Date: Wed, 13 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657714612
