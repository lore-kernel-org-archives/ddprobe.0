Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D030E23A0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 05:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654491659;
	h=To:Subject:From:Message-Id:Date;
	bh=4iqAPWTGS/5mpwCkUW+rKyolnUztMMmx5vrdLH/zmKc=;
	b=Uz8TJpPhtC7CJJ9siYx3GrG9RfnTCOQK+ceorQrlcdX1NWsUmyGMCM1c5DqLSwIo
	htugTg+n4hVJQlZvM/PSlh4/K7qSfJ4EA4/6ygylz3JKi0zH9dxy6Ua+q2ktB1YzbM1
	iLn4T89EoSlLON1ReCPagezVtEQ6QROqqkZaTrNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654491659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4iqAPWTGS/5mpwCkUW+rKyolnUztMMmx5vrdLH/zmKc=;
	b=SGxx3Qrag3RKOI95YuFPR/+BP0HWbURk/dTZdljWZZGBdt4i1tqyT+hB0tMPdxMJ
	8eS6VTu20bINxdkTq52hQjpywQDpcgzoJj29bXA1GVOC8fTYlkP5PQdjy2HbLcpVVuI
	HqUEBcqDy9Mmd6aTTCeN4VWwTc6xehfWy78P6knQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018137633c20-31e899be-454a-4ec5-9268-0c9d6357dac6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f6a37e66ebdc204b1dcfee6f7594659509fb143d59cd65d6256ef5b82f5c886
Date: Mon, 6 Jun 2022 05:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654491659
