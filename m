Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF0A4A3C
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660430452;
	h=To:Subject:From:Message-Id:Date;
	bh=4d9ZB1JIUweXN6TO33g6b+c1bgbm5x59t3sJYoOw4ZY=;
	b=WyZJ5TAw0zrcjEn1EUr2DuWqY64QxrYdeAOvo27lMLBdPvuxEmetWutFwAmmeS/K
	wg4++mKlGN8y4Ao1Wy8Qkd/6OkCDg3SwYrSnGcejtzQUe3Y+f61vTylsczxeAWF2u+D
	2J+RI0qZtAHqN5yi08JKuvEXLbc0BRylO4oXLzUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660430452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4d9ZB1JIUweXN6TO33g6b+c1bgbm5x59t3sJYoOw4ZY=;
	b=eX2Z+ATTe6CZpKr+ozp6TvQlgwH0xSFmOM33Q5EOR0Ammsmz+EWZgT5bPUzhtbQb
	LVNu7zVw4/wmy6fEjSZZQQhKgp+z+9Cu0cTo7T0PnulFy4hbq692JKImLefwkIX6tOg
	rN1W0PDjixOJ2k3iCQkHJcxCiMT1kVw9i+EeDpNA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182995e0751-15cab86c-3109-4c3c-92c8-93f81658cfb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 417ff172b9f65e429f504da95adcaa83048474c7adf960ecee34c08a1f9af7f8
Date: Sat, 13 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660430452
