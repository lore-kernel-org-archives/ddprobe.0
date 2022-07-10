Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45137B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 16:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657469812;
	h=To:Subject:From:Message-Id:Date;
	bh=9s8mwT2AfVgvWAdqIRoCS6asGyOyrnzPbskFDXZJcrE=;
	b=QtacJwWlzgg6n/5OTvjjxbXe5upfGwhfAmt3ua6QdVucbPasTN8BEqmiZxEbI2DE
	pEjjhe0aA602aerohRlM8IHYDFu4sLxwpH/aioFAnVgH4f3yEOrC/i9jdWPiPKqux1g
	NMCsM8ejmUIG2LhHsUGqMx9HBmwCh2PnKxqq3fb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657469812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9s8mwT2AfVgvWAdqIRoCS6asGyOyrnzPbskFDXZJcrE=;
	b=eOgCWlnRA6E0CeS5dzQcnIkmlGu5WJ4UGKJprOGD4VyUEnLD66HH3M9ntUY0DCG4
	pJHZbD6uGU642xw+RRAQE8mrrGsdpyba+rIh1enblQ5G6Yy4YEQGsjhF4iL7uogXbbt
	fn+J5SCs8Fwljl7Vr6e023ISB9iRqDbckXY0E4ps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e8e63e35-b2d4ffd7-4325-4dce-8a2e-b2823344d626-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09a557dfddb4fb455834459bb67e2312088f0b0856a70ecec7427a9a95630c03
Date: Sun, 10 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657469812
