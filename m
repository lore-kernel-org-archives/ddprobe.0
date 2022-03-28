Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD03182
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 02:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648433158;
	h=To:Subject:From:Message-Id:Date;
	bh=mtqq6oqceqMUsOaLQxMEAdbO0HbdPgMMxcszfPTlFZw=;
	b=Tgs1Q0mhm2E64S14tg0OJuttp2a1IgfVjJGE6bG4gvH/GEok7eiKSUUqnZIJswbO
	TwGTDUSNi4LhDazRVcCnb2ZvMvki6pvSEz50DM/UKR3+XowbrXmUccQ6u/LSmTX3vzV
	biUGlevdJpVdj21+xXY2nq81IA6/VQp3Xd/L174M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648433158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mtqq6oqceqMUsOaLQxMEAdbO0HbdPgMMxcszfPTlFZw=;
	b=fwbdIOhvyY8sWOgMgmZYkfYe0Tm2s5gqmFEewadVd2RMNIVRirSg0jyc2GAYBuE9
	SEy6wF8TPgqGqrFxvgt60LbQ+uWAghbTZwUcrRPcz0xbsEsbYLPSNM3Y8oBChmRew25
	k0spBIwIg2RN3gz6IdJhgJPmCwiUrsCiLdbuhv00=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fce45d899-0dc7006a-00b9-4bd1-b6e3-031f24ce9cc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2abb6fd78e1c9f7e41301948428f94b5809b0b93d63156e2d0ea481c1a26f4a
Date: Mon, 28 Mar 2022 02:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648433158
