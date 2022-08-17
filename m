Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EA47C
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660719652;
	h=To:Subject:From:Message-Id:Date;
	bh=K+AXT4gmCy6dTApMrTwUHGJ9O/30E2TBBg4G7LG4Bcc=;
	b=kI/0KmRSLOP+Ur7vkWkXxQ5fX83mcHY2vFJ++pK69eg2Sbli3RtvfdzYA1tHlkzX
	o/XpMsbM5KruehxmjM9kqjsCp6KnMerhXByb+pY4QHjuPePPIR6UREiWgJLPBnvboNU
	7QKed2wRt1EeGoXBzgkpWz5PI4Pq+iyr2wNuV86w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660719652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K+AXT4gmCy6dTApMrTwUHGJ9O/30E2TBBg4G7LG4Bcc=;
	b=gx9hvJjCTMaCJqdhGKyHZ+sZZjnpwJVX3ZDeBd0K7WRj5Qb7lVu5IHb40jOV5pZY
	UIvA6ttuZt7QeX80+D66HYeepQ1xO5mkAqp204XD6sz01PKWeL8Xr67ZZJF+RXLLRaW
	jvJrZlpdIihdhyBoSjWmRk2jpK/8iY6qiRvHpzdU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aa9adf03-6452cc23-b5b5-4b6a-af6d-7765ec173c80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15e3d436f5d1bf36ce307e1e523dc76fa273a0123f89b79de53dc7b69307cb4f
Date: Wed, 17 Aug 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660719652
