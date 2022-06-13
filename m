Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3757C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 01:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655082839;
	h=To:Subject:From:Message-Id:Date;
	bh=Qye7Hf/F67ygZN0lECDJ7/fm7oTG5HeMibMrmrJ0UVY=;
	b=HXFX4UJXY+7VtAH0sSO9o7kPEjq3rSGkCYOJBpNpRHy3BOmTiz2VHy/D7Keiwjsv
	iDZoWxy3AdxjnXqMqb0xCkgedlvKb42bgGX3x/J2GDJls/YDqnL/AgBLJIjfBO1tjPp
	nKQg0l37GWLx8CcEPWcR/drKsFc6esG9QD1lQxRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655082839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qye7Hf/F67ygZN0lECDJ7/fm7oTG5HeMibMrmrJ0UVY=;
	b=ePGqUUGd5N2n3gWIRG362pbNvFb25YR4j1Y3P6LkjbFZtSOl/rDzjPWoldX8YECn
	H4pccuZCNu7Vb5B454RE8nSdI092Mlo8HlQUU8DOhwp1RX5O09+yZ85R2VSLHR05Now
	+3Cv0VzMH8MfCeCupoJX6/1I3A4dJLzSF9dRmZbk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815a9feccd-55e8c6d5-5d46-4a4a-92a7-e85ccb79507e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6a0ede4b980b2dadd16220cd51a6aa40501fa3149753e28a089dd0aefd16a6b
Date: Mon, 13 Jun 2022 01:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655082838
