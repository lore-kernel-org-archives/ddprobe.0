Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C972F39
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656274012;
	h=To:Subject:From:Message-Id:Date;
	bh=yNdRlX6zvlOwW1yoGbL/edrV/Bcu9dtj41HUMvQdZ/E=;
	b=UADd/3YOG2El55OGCaSvwsCTZFASFL1xuxFfzORfRpj72SqqywZwXO3qv/ydLF+m
	Zrqkl/2tpsuuZToI992vsiuSwXct75ur3pc97lzYDjFZBuyZ68LBf1/Kdy0X4uLlkRH
	pTCJKc/OptQpHL+2i7oAANL+9+e5REM9wfQR/sbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656274012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yNdRlX6zvlOwW1yoGbL/edrV/Bcu9dtj41HUMvQdZ/E=;
	b=V5XI2x3YbSu7OinFciR1woSwwHLagmHKH291He1T3t+hIXtE8jVb5W+rOdMnetAs
	EGDiCNdgimnqqUM64y0EiMGla1BMakybhsTpbd8PNUoervmtzvAf9ZZHJ1YiwKN/sMw
	I1mpMgJ5x2pEVyJnkQb/Fqv4tCOYLBFJaN/6nRck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a19fc889-67701562-4cbe-4799-85b2-98ddd421dba9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a834295b0bb810fc876a6c71798388fd1b10ca6433406cbd13deb724b3599122
Date: Sun, 26 Jun 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656274012
