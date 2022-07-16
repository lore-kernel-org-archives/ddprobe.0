Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CEE6674
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 19:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658000212;
	h=To:Subject:From:Message-Id:Date;
	bh=M3mhwvuRn2XPrIknEmqCqwqoWlWZheu3iolmhPh8ynE=;
	b=Mja2qb7ZgeqGb6VUfNWYQbJZqmnof+aD1Wma/t1nMqGm/YjTUW7/DTPqJgC/msyO
	mpmOz+n+nxD2qTimxtdHd6p/J5STCYwY49eNtNc4/J7tF24lVpG+URO0hMgCEfUfZez
	xXQl4/ExYctWmoQajea63qiUO+sfRrx5fZMd+oiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658000212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M3mhwvuRn2XPrIknEmqCqwqoWlWZheu3iolmhPh8ynE=;
	b=ahfudVWJZCKcgODg03HFJbZJzq95VGKteZZyI/dyVooJOJLY3mDKTipxfG001zqp
	/+Wl5pGqHYj0LAbos9FDyIuntSv7a9yPClI9AuB7bY/X+8UJSmXAyzOoMvF5B10mTCw
	xD1DxTG3p1TUybarIDqx+uqLXgF5lRj2q/lGD+sI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182088381a5-7c89100e-e06b-49d6-a7c4-c150ade77718-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94006d2487f8781cc09fff5e0dbcbf7aaf12fe8cd6203b49602be3a871262af7
Date: Sat, 16 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658000212
