Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2157B1376
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 01:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655169120;
	h=To:Subject:From:Message-Id:Date;
	bh=+aEWLhwE935QM41dJWA7cfD26fw6n7PLHesPVW0J6qU=;
	b=WlOqVAKc8B0zzFsM0XpeXBmweRat7+/KK4dCPCt46vT34lJhZYehjvlL5Kms3Hjv
	psJyhgMLf6gNGuyx3Sq1oAwHCfuQU7cI+TWDDthSC9nsG3gSq+vUhsnm9E7LW9oJGpi
	tMHOQV8LI2sWVY8uMQG7Y7p66rYSbzg/aBAUWNNE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655169120;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+aEWLhwE935QM41dJWA7cfD26fw6n7PLHesPVW0J6qU=;
	b=ja5kEtWEPBpH8a3hAQ1UrPQ0SDZc9akJGL0OGIIeBFe8kJXg01cY5Vmk+owQlFIW
	G61QFw31zprUKdVR3pRcl4O2m0PihHC6G443JF5hk2z23EpKSVJlCJJiRtGjA3yVgCT
	baEHqaysY7OFoGQL3n9suR3A8JALq4qLRAJT9GFs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815fc473ea-7beb3b4b-4de5-4b22-b616-541f489ca165-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91bb2c1b9b5e28542caba37fef6ed1b77346b491c8599d4db76f698e1f664818
Date: Tue, 14 Jun 2022 01:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655169119
