Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1505F19A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 04:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656217012;
	h=To:Subject:From:Message-Id:Date;
	bh=zafbdHHmkzE3vu1+sS8rhWSA20J7p7yupqOOtNeotGs=;
	b=hjzGT31yTXMxuVAt9qhjaWU8fkb2XYWEZBZJxRJHrBeA+92rL0RAUwMVG11rIAsW
	BdVLS1TZdDw9BGXRHvbLchQdhEgPe0oJubmDoLB17pDNVv5zxhouqK1XtzhXKXnSfBD
	GVd0Jr5bEOelLacts1kgn8pmo4b4eo3aqpQZhS7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656217012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zafbdHHmkzE3vu1+sS8rhWSA20J7p7yupqOOtNeotGs=;
	b=bWMkjaJaMpuqIFnM0xoEnBiy1Q1Dvcm8jtSw1N2sbfWkEwLwVS7I5bYBbJCElgfX
	r7PyM1v6EpEEuDEinmIMIP6/bjGBkd6HlRV4C40iFTusHGY0xseSP4GChkX7X+VQ51X
	OkygJB86FgWJtVJUtAkDsC8ZL5ZIKuF2c0cnmakk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819e3a0880-62f6addd-d0d0-433e-8ec5-98c818b5915c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fc5291dccf37e3e679f58896c67310f33a9c494b1325d221ba2854f52b70fc3
Date: Sun, 26 Jun 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656217012
