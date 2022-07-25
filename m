Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0F21375
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658758612;
	h=To:Subject:From:Message-Id:Date;
	bh=ecwAF1piW11ND4BUO825rLXe4ejvhlupHbc1Ps3kTn8=;
	b=HTJO76eEGBbcDY+UT5LbZCIsrfzR91MBXTbjt+Ko+vuS38frFOldolWzYpx10r8s
	xzFLkKgag9kWsmLhDMQwtsKjQcQfFehQXoX/uTa6yIXHT3tuGMHuJKcS6WAp5X+j//d
	PttkZwu0xM4Mluz0CVFge7NtKvh/WkPShy2UvAHc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658758612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ecwAF1piW11ND4BUO825rLXe4ejvhlupHbc1Ps3kTn8=;
	b=BHGe/Wr+lOiuV5/ttJWI1FMbDGF6dLSM3hxLAzlIDz0SpAHul9mizfqzjSBiF9W+
	+0fxbPb0yV41XIeEWs9F6Ay+QgscZFOyf2Ue8+BlgaYNFZWygzY628eYwaMoigXl8QH
	M36H5RS6Fc7eO+jyIwtFUpY8VTezFE47K9muaK9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018235b7c570-cfdee72b-a83b-4a7e-96f9-5a7541d29767-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bdd98f1a0eb8786d4b24024c9ba47a4f41880f559f0a3805cfbc55d95ba7ff1
Date: Mon, 25 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658758612
