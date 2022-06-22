Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B5810E8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 02:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655864459;
	h=To:Subject:From:Message-Id:Date;
	bh=JppodHUuKTtHWNJJQ5hdoN9tKoPETTtnFj4RhCE+DYA=;
	b=jT1Fqax0T7wQY11afa9wjL+1U998UhTN6D2nAgtaOH4M5dbI5NIegnJ6AmvMCJ3u
	tSRLY7ZGYLzuiWwr7eUAzGSsVfAWF8rhUANb5NKtiGJZKDOz56imZrdeB2ZBLjnXr73
	VaPsWEDymseaHW8jm/97Je2bZTyswikOHz9P51AM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655864459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JppodHUuKTtHWNJJQ5hdoN9tKoPETTtnFj4RhCE+DYA=;
	b=YEfFgzgmiMricLNqau5dZ+UnXqXX0YUf8o7fOmw7LjEE3xuOkaDfclekHb9SanAO
	Kz34g5dyVjpQNFcR/HUgYlJmMa7aCfuDAJEgdveqM2+0yDsb48hlpJ6ROS3E52j4AM9
	AryMGOeyK+HiQIk/WDrGgpG0EexkTpwqo/YlkX5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018189368000-007d09ca-bc61-4c2d-9fd2-8f6d3ea462c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adc3dc53bbec1a7734ec306dcc66e1cbcd6baa750e9dfa7a659e88940ac768c7
Date: Wed, 22 Jun 2022 02:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655864459
