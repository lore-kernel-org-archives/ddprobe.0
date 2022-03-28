Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E251917D0
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 05:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648444438;
	h=To:Subject:From:Message-Id:Date;
	bh=17UWublpvTaPYGRGR0HnOyGhMlBjcNqgVfkXCDE08bc=;
	b=bCw7/6tZVHrkvWrTG6nhh+fgPK8txIUgV/PlqIHqM9VNQcJoJDv3SntTNDWlkqEk
	fPIXtK2hQ5P4n8CYcGtLn851nV8m2paxZmK6Frkom7n0nZHHA18IpFrIfRmwB1E12Zm
	HpLarupaATosrJLLeyu1LWpXJsgj0u6E/zyk+uDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648444438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=17UWublpvTaPYGRGR0HnOyGhMlBjcNqgVfkXCDE08bc=;
	b=E7q4m85tdCFmqGk8DuBeogz6OP55iOHjEuJNvJLFgduLwooPHY8+9sCV3KroEQI5
	ZrmhX2jnAZ4aQ2daYLd+yX4M5W8qws0NEcR7M85QL4WgYGGxCzvRbiDhUCW7/M6f7lM
	vpQ8+JNFabUKN7D4AUpHgDg+lv7IBZmLezS8YqIo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcef1f702-177d08f8-5111-4acb-b1e4-a5ca538a2c85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 517fa8c2836613811e8b76525b32dc81910d2377b59ae3249e6786cd796bdbcc
Date: Mon, 28 Mar 2022 05:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648444438
