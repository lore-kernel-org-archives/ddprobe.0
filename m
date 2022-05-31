Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52E0210B
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 09:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653987779;
	h=To:Subject:From:Message-Id:Date;
	bh=vyCz8t97lpYDyxOYsmIVJm71iLqpHB+gPfTQh/zWIYU=;
	b=D4Yw76p5bAILqG0D+kCJP1u7qu2b8QQGaLgPox4V9R8dnjrYEFXQU6FMKAmeFapH
	6iw4PPuHrhB5Q8y2MfHeUkamwkICMeKm88/hiIXgsBTcIvdbAsJk3pN5I3i87A+kHTz
	2a5ZcbD+riVrCaj9oUaor2RUfd4SXKHCX9e+8Nys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653987779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vyCz8t97lpYDyxOYsmIVJm71iLqpHB+gPfTQh/zWIYU=;
	b=MmakUuu4O159LGTAZ3Ajtt2rzOoXavySMD+IOLJZEHPIFmtAyOSX4MLV66uxRt/Q
	h32k3uIeTl4oKpFy2J4OZaUywSJNWqyC9WMnjQl2duuKRS3FFESGevBHPub8dsjtVrg
	iqCytUX1vSBCYn/lDHJMLBDLFNbO3wQpnUt75G0Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181195aa2b8-cedc6c3f-9356-40bd-a2a5-655d67441c03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b989121f1fea2bdb2ab05148b562539467be136340a0fa7d209189c81eb81f64
Date: Tue, 31 May 2022 09:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653987779
