Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036BD7B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657433212;
	h=To:Subject:From:Message-Id:Date;
	bh=FUkbVUmXia1LQMBk+OEmesfRwuN6g4YFw9yMKwZCsfs=;
	b=N8OZCIoC9ZJanKeg6Mc9rivVWV90lpKZ0UwQnr10zJLfz6K7FtZyseMlWggK4MjC
	PcIdWDkNlh7dXXjK/Y9SuTbd2E3ip7rpCQMEbcX6xzjseryzbUM5POBCcAYIfHdiJnp
	29KiSZGJY/lb5iEF3vnq9EzyT7RKsgY9Wda6U4ss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657433212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FUkbVUmXia1LQMBk+OEmesfRwuN6g4YFw9yMKwZCsfs=;
	b=f4NDGp97wrAKJ8Izzh3bKaQLboTsgFqh8p9XAiIcjyKO5FxGe6s2S480ZIjOSEOu
	0xeKxpQHTrstXgNTCvwp5Ttdtz13fkDQDYlqnzZsxflRbUSj2PU9dEsu2Umi4fmQSPI
	NthKqoQYJUgpIbGVD3ng9cDZHWe1SaUu/kzWRrrk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e6b7c589-93e320e5-057a-4acb-9c1e-82cd787f1c2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d221f0df8191ce042115034b5b6e3938264afbbedf13b980d038cec0c0988d40
Date: Sun, 10 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657433212
