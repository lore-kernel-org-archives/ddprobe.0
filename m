Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E21915A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 12:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648385458;
	h=To:Subject:From:Message-Id:Date;
	bh=oeDXu2c8/x7IIIM0B/VbPDjRAJ2EAvwgD31oJ0e1WCA=;
	b=SqkjcpW9wChe7kzfykNZTlFRx9pKhQ8d0vbnx7HiqfArv7U8M8gE7itFvRPJp1mX
	tSPOubz0P2liv6ghuCTpox2Lsdo1thP1jCCO1WjRFVBRQl25Bhpqm+eXB+HOUfUhD2V
	ZlXSleEwrsQo+X76uQO8veuRJIp1dn3QZUevHquE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648385458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oeDXu2c8/x7IIIM0B/VbPDjRAJ2EAvwgD31oJ0e1WCA=;
	b=clNNX4KCBtGeFP/S8ClNKw4B1q1z27Dtnx9UPgm3MXYZn48fCKIMSpIwqtIvqRuT
	orjtyKPZynWsO29XjMhH32YditVvH0r5zAgZbanoAru2wtjCV05Xo+A5sspCBjaVZib
	scS6xIM7+V1pR0WlqIkxMhppYuMppZAQIs1i5qoA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcb6e005f-b2db1453-253b-4da2-be70-e0e2bf84f5d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca28f76ab0c959ef2425c52ad68d69b02daf9f02b9bcdb5a4f99bd84e05abdfa
Date: Sun, 27 Mar 2022 12:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648385458
