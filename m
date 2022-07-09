Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04001A2D
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 04:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657340812;
	h=To:Subject:From:Message-Id:Date;
	bh=CuuyY8UEWL8L1ViWQf9KcYoN0VakBFPA2yFPQuTrRt0=;
	b=OJ8XeHaQ1WydigIZ75TKF21jy1YkY8LsCunjepQ/I9zquxUbhI/H4xrQZ1W1LTm1
	+eJy8fz8SpM347gXPeB9q7/Wn5RAZsa75Qpz1Gl92TqAeTk7nDsmtABmTu+ivHWMICf
	KJ1ywVyncXvZWh2Mh7rZIlHU3Jtxx0pIh8wpDx3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657340812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CuuyY8UEWL8L1ViWQf9KcYoN0VakBFPA2yFPQuTrRt0=;
	b=Zmvy7onx2ynTQrMYinS8lSDu9qqcQZoGaa0Q93mqrPoPgsnPVwJrljlc50tPDm9C
	JiTk3LaOIuwnw4243w2TBtZSY1WD7QX0RGm75qu9B7mm6osxIy8BAXdFdo/l3LGNzIc
	D31a1c25lLN1HFPJK+OwjNwI+wx4tSDGAA+SDWJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e135dbf0-6e3e90dc-2429-443c-bb17-f58031e48814-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48960df5a352f7387bbf1b8a156eb51c0757c54bd5ce6b1eb717caa15009726d
Date: Sat, 9 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657340812
