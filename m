Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5A27A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 11:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656244612;
	h=To:Subject:From:Message-Id:Date;
	bh=/qclEdy/UNngmEsVXBW4vudNeBlNvyGYgsPrb+Z5+YY=;
	b=Qbmw1uWVYUk4w01srSBm4R291M5Rjlwj/ylytj3kEFOE4jMJAkgmJ5eFErgAEJhQ
	a/mZZOhJVqn2jELXP/zfT13hz4YS0XPY37KTruvBr9pobgOHn1M6m4rocuLGOLCe/Va
	9JzpDaayUwQ1NN+PKmrQ7aWtz0ogTcst4y7PskIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656244612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/qclEdy/UNngmEsVXBW4vudNeBlNvyGYgsPrb+Z5+YY=;
	b=fajuTu86dsNF4gU1ViCtOjzEuaRhts2TyZit/iRJHslI33TOov1amDO7nNgYf2EC
	CgdTZJb2mq72NB5gyf69bpw8VSJBmJGt7stTcL86C714QEM5BT4IpLRFaMlG3e1ezRB
	y2PiXBl81+OH7JA+YhKczUEFI9zP7K34CHuVBHBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819fdf2cb8-8921d413-0148-48bc-a1c0-ed9b89deaa4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c657da9000898d469ec16c7315a3c2e6c6e18aaadad8eed0f5bd7f7af10ce2a
Date: Sun, 26 Jun 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656244612
