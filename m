Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657011102
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660548652;
	h=To:Subject:From:Message-Id:Date;
	bh=bICwdFfacK2IltSGnJYEiBnkWk471K2+/QWHzw0T/Wo=;
	b=DRVAsBHVJpXEqV+DcvhdMgeTLpv7gSh+EdXN3RS8RufggmUnJhzxmCYRWDjVY4bv
	5VUTdnlsZIQm5UEaHVzPejq0oSf3VOTE+jVqRYNmkdnuJ4vBN/lFdPFCvaKLrlsEScG
	kOVw6Xu/1LFZJmVWQzc6nV0ZlAlto3o8fSw3mi4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660548652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bICwdFfacK2IltSGnJYEiBnkWk471K2+/QWHzw0T/Wo=;
	b=XlkkGhMM7qfHgxRopZTP6BdXPO/AfABO3kQayj8cTcOhZ42PYkqhPI0cr7EX2Gia
	9x2+6nH4PcZnMjohxD8oYJYKR65+vBN+EkdXM2rxNhh+utJc2KZUAqZ/TcA1znnPbsx
	4gxk+AQu3yyZfq7xYYkii5ko0imz2HlpmsJWd2R8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a0699e2c-a6a2bdcf-a4ee-4c14-be02-cc09772e4942-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8178e525829a6ac822b3304e2c2a50e6d3133d970cc45e0e352aa220a6734860
Date: Mon, 15 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660548652
