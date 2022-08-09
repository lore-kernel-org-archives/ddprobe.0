Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1FD15A6
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660009852;
	h=To:Subject:From:Message-Id:Date;
	bh=eXHSSv34TcQ3Pam9hHygPItOJKwUFc88XJl5fObZ6xo=;
	b=hIG6Jj5Lvkxbflds5//OjiZY/5nptsEb7y9bgttNAkmIb16iC9LX8xPPTUloxdZS
	BqwNGsttH9PT3Vc8W2cQk46CjryADaJTZe5eEdtH2iRyaH6J++8/FzsuuHqU2i9DenT
	uMv4bNI1yeYJfi4RsM+XcHZld4B+InnGQaIucdHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660009852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eXHSSv34TcQ3Pam9hHygPItOJKwUFc88XJl5fObZ6xo=;
	b=X6PvnukckvqXuSp194xOmjfGeWPr7zEvPNSGvjGu6Iloz8USoRstheqQBzCblGq6
	7RRmhm7vuJnatynxk57bPhKeznobOVfs816dh5NkyQpZpVeIyLt1+LOY8yCWcbt19+n
	QuP85N8HrnI2qTsffa9TukZ5ujelUIwcAg7lMV4A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182804c2e89-eb95db1b-f1db-4d40-b220-d708f189ec91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de2cfb68515b723840bbf5b490d217947c07fce3883568a09926ecd84343ce11
Date: Tue, 9 Aug 2022 01:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660009852
