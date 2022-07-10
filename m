Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EADA10EC
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 04:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657426612;
	h=To:Subject:From:Message-Id:Date;
	bh=JODNzo2HSVrbGOkvRxPtSSKQaw5vxR5vDpv4AeIq+WE=;
	b=NeqlYLQ6voMSBjhuk/g8LURXqIz2MDcxzV5D6kf1NTszwGTKc5VfwlB1ugh+kqm3
	TLgVoNqL5SEOp0jZsDB6iZGOuOD0liqkz1H7RFXCpZtG7NsXk8HHtBuNIU4FYrWsJR2
	qRe1+W73zvgkQGuumGFhvYgIkbccUqRDgIrUmGfM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657426612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JODNzo2HSVrbGOkvRxPtSSKQaw5vxR5vDpv4AeIq+WE=;
	b=PseWC8X2rikPpqGlQMWFN9m3Cf++NxHH7OGt1ILRWDrVHgqRekNXxIGNJ2rUrUm6
	q+GnlB21jch04VfLxs9nWMjRSz2+w74q0XNxXo9SYKL7z/Lz1RU3FYdqJZvJ/hqrTsX
	c1QkElc7agN8vH9oFNQS1ofs5ya3v5VexziwXKnA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e6531071-38fed923-4efe-42dd-a8a3-8e6ceafe32af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fcf2de56d0adce5047a9308c4b2e0347f93add608cad0037911fc17c8aff995
Date: Sun, 10 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657426612
