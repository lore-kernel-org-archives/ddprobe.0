Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066AA7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 02:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656382612;
	h=To:Subject:From:Message-Id:Date;
	bh=FTCA20jamCzZgWJm8AV5r5RrUU3kv6G28c16yPdiShE=;
	b=DM6EjTmDwyAwArk+EiE6/iXU3XHxTMp/xr+xg6Ezu/KAbZ9HAAGFMD0ypBMY32uu
	m4Sbcjo2zDxTVrm83aVAvBlsEgiUaOlCRe1p66zLUIc5mA8lmX9z3g0E5OW4xRbokpg
	f0pS5ON4dl5T75IaWKfa6ogR+twar+6cZx1MSCN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656382612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FTCA20jamCzZgWJm8AV5r5RrUU3kv6G28c16yPdiShE=;
	b=PlOgVQFqyj/FF3RWvk0Ey3B/ymTNj63/tnNmWp482a0oNAcwIPRHpUScTyNGgWiJ
	XX0sWqXTwknhLnB2eOgki+pQIFz5rzjyKFql0X/JhmZs6dzQ/2H+VFRAdXyTZI8Ssh1
	3gYMgGZWt74jmr+/KmvdFJXY3ea14MLwEfvxn3Q8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a818e33b-9b86735c-fc67-408c-88be-7e00e53e3b9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 588c76aad2d45244b6f916b8d854f5669da9b0b4dd7a6cc680f4ba479ef6c48e
Date: Tue, 28 Jun 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656382612
