Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF2C366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660303852;
	h=To:Subject:From:Message-Id:Date;
	bh=TKwWIQVpZq+Vea3TwcDpPWlujwbtY6tH6qfVHHUheuc=;
	b=TamUcSMv32vcGiCbqFzizTN6NeTdigApn54llVtthzd1yvjh6ttrF7wrZ1XNhk+q
	neA1kjj/D4yY0zOeiLqI4LZs91u1nlFzR52wDgv/RblAKoddtIuNTQyUA21mxW4/YBN
	s5qLy20FlzbnhzSHdeHV0q+iV1qqR5LddfiOEsH0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660303852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TKwWIQVpZq+Vea3TwcDpPWlujwbtY6tH6qfVHHUheuc=;
	b=MOxNfAnHog+tkjOn1J8XuyTCfPqfvEitbklOlaoqfkihDHM9g9eCVDOIlIfT/n5I
	QeWiSCy2TFCNcE5LPsLhxutem0F1sOfClPjfrvWLwX0KJjKVxiUf7nQE/DHEiFb+KC6
	xxb1k2mAbWrLxkKl6bSukMrpRXAoKxRiwmeKU7FU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018291d2442a-ecdfb7d1-1e1e-493f-bb7a-6d6895d36e83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7f77f690cd6fba6b37ef19d080a8da919ab2ca8f2f50d9f45b5e6b51069a934
Date: Fri, 12 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660303852
