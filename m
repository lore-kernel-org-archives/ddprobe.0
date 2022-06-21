Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8A1A20
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 03:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655781059;
	h=To:Subject:From:Message-Id:Date;
	bh=hw5lnDNyxAx2yXqu1t616m4g1wciBFy6NoctFAG41NI=;
	b=CdKsLCtSof46mPpwywR92Y1i0c04agcvC7ugHYgVg3WnQwCaVxB0BXTqL1eauwT6
	/OQbmWRNSr6ncdRPdDr08uJ+yx1EE2qYJFtM3g086sr9UDzHbhTUVZ8TfpSeHsfXMUd
	U0Sl8b1LSyRjRHvZa4TEcSAYlVLQX5EBuXNXfjx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655781059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hw5lnDNyxAx2yXqu1t616m4g1wciBFy6NoctFAG41NI=;
	b=ZMEDjxKDn4M4NmmcySvoqrAS88G9aGK/N44nfMbve/5TDQfMYGQLvFyiZ6mkDWGK
	CCCWSL9qugQWly10qZGncPEnMMQ8LOzqeIPQmA5jrq/sjGKrAHJvZE8m9ues4eKjAWI
	9ZEV+TwjnCgOxUxBBg00LcVi9CX1Y96VOmQmt+Ho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181843deacb-734507a9-b459-49c1-acdc-b3120640af3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f56a9611d7f1959cf3c01a82b5a05be9e6a3d105a2236cc74545fc6fd9dfd16
Date: Tue, 21 Jun 2022 03:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655781059
