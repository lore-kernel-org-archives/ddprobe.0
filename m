Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9405B2F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647493585;
	h=To:Subject:From:Message-Id:Date;
	bh=DHOvtDwkyGgaqhDR/Ejm4cUE6+rV7PnR0Ltr4Vf+ZN8=;
	b=joEAKJ3iqh9kOsw6wtG5GEtd689GWrHqC0qiSC6QJ0UlAzUidtJ/BMtnEf9cGiD5
	AWa66pqEP0wlevQZd/R2EyGhxhsbyEGSxlgsyqGukIdWwm5d3d9CrPiV/MVLsbfD5TX
	i+zzrrumZeoocmYpWnqju1da9UR7Aumurc7GAF68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647493585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DHOvtDwkyGgaqhDR/Ejm4cUE6+rV7PnR0Ltr4Vf+ZN8=;
	b=IByc5/k7/BcT4qmDUDr7lI9s/d+/EhxnPUswkEl6b0JPk/hDEf69ZV9JaPpuuyRE
	x6ZAipofcm5PJQU14OrrhULf5nZJ44zjQHZ5M0OLn8AtE1wOa2wjxsWkhskxQy4wTXB
	TxCD30Ybwn2ormLPhUejcT6NTq1B/lmciX2QkLis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f964517bb-2e316770-dce9-44fc-a78e-3c4653581439-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af2275e7b12136a4d206e07981689772c6dca56a5f32d3ecd35e80339c65ed24
Date: Thu, 17 Mar 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647493584
