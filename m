Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A3923CF
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 13:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656854812;
	h=To:Subject:From:Message-Id:Date;
	bh=c2S3iphGVhAHVym5jbq94z/PAIa2lfQTsqkjNmfw46g=;
	b=amgLIZj7c/43Ue8cANfup/dhQGfOxGBcWgvkmWTStmQi9s1qdhcz11u2T1RQlF97
	JYnb6o7ZVmZxf0x2yinv7ZsesZv5PAGMuCEmjhu9c5G2FknXkP53m2D2q9l4TuPIqO3
	D4wNyTlnHr9TcAQvS2kic7q/3Qt3F/iW/TwsU5dI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656854812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c2S3iphGVhAHVym5jbq94z/PAIa2lfQTsqkjNmfw46g=;
	b=YrFuQR2TT2/qsO1pyRinFlUztFs4TFVzgowMnzRjbLsdsZc11XpjPu7QLIvdUj4i
	loVBApsXz8Q+Sgf/i+YcOhcmJg7OY4uRCAjDM0XrsTZvTH3roFKWPxkM78qcE+8z70I
	09n4tuTj/JNUiaoUZMZZvB0nyOvYMG6ez0/GVcyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c43e16d3-9c77a4b0-a516-4b72-85d0-3af04a7922cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b8ec48e3240f3eb473e7aa5ffea37e26dc17d91a2477fb99e6ab82cbad7b250
Date: Sun, 3 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656854812
