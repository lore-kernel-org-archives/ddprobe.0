Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165FC6661
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 18:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657994812;
	h=To:Subject:From:Message-Id:Date;
	bh=I3FwPxA1e8OJeTeiFB1v2pAxgfj7mbtW69Js5FPeN/M=;
	b=GbT+/xWYacTaqqcG9/6i5COnjVsaSKmQ/WMnmjC003buTFjYyBZrDI0CZei71sYi
	02L8QawxzV+iVgvs8QUNphco1A4nmLx+2DztJiBor3T7sqIIna9SwxHCM52dvJ/t0Yj
	yh8QvrBd+6b5m9tzjyX1oLmH3oVfmOnuYhxkprc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657994812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I3FwPxA1e8OJeTeiFB1v2pAxgfj7mbtW69Js5FPeN/M=;
	b=hNx/+s5fZCWCotc0sfhqGtvI5zqGaHW5mEz2bIGVg0fam7XW/xOiBsTY0e6VoOtl
	8RmXQEVeTl0S+nOQSqtDXAPuxL2AC7XQ6t9hEW4SQYHA062xEDFuzr5cVwFwEto2ypT
	5soZ+oSpiUCOLdcZxuJImOrumeQHHwwWy2uE346c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018208311bcb-001747a0-c712-441a-b0b1-0aaee1c119a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 021def253f747206db894fed883c3f0527c3c2bda1c95b4a621accd3a383e87f
Date: Sat, 16 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657994812
