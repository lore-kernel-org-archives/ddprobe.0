Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D6217EB
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 08:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652342879;
	h=To:Subject:From:Message-Id:Date;
	bh=r37PwH6vZUbSzML5NLRAX0+6ZVlmtskzDiFZgw0dCmo=;
	b=HGm/pJj+5P87LHNLso4TZ9Lx1RYhJeWmDSeHHCsDKlRIpjib/CP16M9WMtD0gL5m
	AWOG9dM1mIrKp9sw9WsZZAe94aAKSNbRPNcxHC0jH58zXanAwa1jE+Un/MKn9iIuoym
	kmInqytgQV/r++F6v/b82hyklybMbv5Tg340ntq0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652342879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r37PwH6vZUbSzML5NLRAX0+6ZVlmtskzDiFZgw0dCmo=;
	b=NCHq4LL7TvSh2KAZFUXL3lsLjqDZEtOkBo2SUBR9T+l7txOecyq2IRQ424tA7KTa
	/X+QB/uRnGB2eOPV6p8aLcpxM1iaqFmg7EYSWm3l/qGylaug1SCJJk8oo9cdR2Tf9ib
	r0V4PzKTJ4WHqOGvFp0x9M25v9kjRRQjfNeLXbFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b74f742f-ca5ade45-c9dc-4452-8d7b-37302e32a617-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af77fcf7bf2a6c74f9a8aa9f17a8082619c1eb3e777c49ab33db079c62672d1a
Date: Thu, 12 May 2022 08:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652342879
