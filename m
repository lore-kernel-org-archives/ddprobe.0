Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267471375
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 12:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658753812;
	h=To:Subject:From:Message-Id:Date;
	bh=J4LxPwBxZZo/FYvkYmrIwGlcp98ftmiO/M7rTprP0TI=;
	b=YIkd3vJ71Tu6eFZJr2n5/VrV2Y8SlWH3/a7/hueqMHQ+obfYD4BOmQIjgvlh9zqz
	7XStMqe17L8e2epww/HtFDrAUU4rmFGHF0Z7L3P5RlCnSL4/KgmYlCivTdzpBM50rSx
	sktJq3suyUSpIrG5ocrAQIdOB3Z/LRFS/Ek7rVJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658753812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J4LxPwBxZZo/FYvkYmrIwGlcp98ftmiO/M7rTprP0TI=;
	b=Inaqc1GyVHvTqfs3V+1L9Wpy8/OS+M/6Z2xA9E6Ja1PKEyp+PtzQ1PzFO8K23sLs
	M4MbY4ukj0ImPNZ5dutznBogpbbfIjrzgA547Hoizx2p81udwU2s9nLwJOwjn5xiH5s
	5uKsba9mVEf3WFpExfHscQsW8kTxnHUJYDEGON8A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182356e873e-2e3468d4-bb30-4547-bcf9-8e0b610abc61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f91c2a22bf96a2ca62836b8db3469dc59a6f68953f21ca43bae71cba16d1685
Date: Mon, 25 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658753812
