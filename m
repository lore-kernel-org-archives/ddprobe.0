Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF3733E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647009684;
	h=To:Subject:From:Message-Id:Date;
	bh=Cg8f9PZu6+GEQmv6BUzBjqkIpZ6tLF5iQFCqAYXr1EY=;
	b=BCIUCxqVw3nz/h2m6bFv9m73IZmxwG4X9SGqUlbeByLFdY1CNrptqByCgTNLbSWE
	IBmRryUZQDfHTdxGtVqKVjROgJzTZLYMuu+Fw/nBFyUm4FnC9JHEcNl/kyvKNNA2Ccb
	8Hu4+LLAYI+beP19V4MNZqEX5LrcTgqapefzZusY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647009684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cg8f9PZu6+GEQmv6BUzBjqkIpZ6tLF5iQFCqAYXr1EY=;
	b=KvQ8zGYR8p3aPRZaqiIPBOMOlPwQTLHgzBqPW3OWiDHOqfou9JDW/nR4TBG6Emdi
	FO5Ygs2j9Cj8XHbEIuQLhRcODjJYjKqfS0WlMVG5BEA3TF/ztUuujk30KPxwnGawJy/
	kyJuPwOiXy1alak+r2B1+Of/k0scGxyGUQzXwYm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f796d5d31-42f7c9a7-9463-4c2e-be92-c59613d69951-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e87901bea24ca89fd3a0ea6bcc8a9042c91a97bf147c90e9b9da91c2588dabf0
Date: Fri, 11 Mar 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647009684
