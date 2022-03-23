Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A412A7A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647996984;
	h=To:Subject:From:Message-Id:Date;
	bh=Suqqa9BybbUh8hqPRyjdcj9TkLAvKHEjY9fAsS7ZYRQ=;
	b=mZ6v6puV6/RWJEMe9urTIpo4g2+TUndkl346GhzV+eZ9qRClD/0pW65wIpoMh2hV
	Kjgzn52/9E+qLmsRl7jE9M3Spb4Ni4i6DlBA0Ie+mNJHVsBv2R36x4DlivO7DaAlvJJ
	f/RAxOGJaNXbsmWgUQTgXQzTkslI7QjSQgLh9jBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647996984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Suqqa9BybbUh8hqPRyjdcj9TkLAvKHEjY9fAsS7ZYRQ=;
	b=hiXl9tpUGbwzrUHonbljG5zuJWLb3CYTy2uGc7XIKlcvyCHT/iA6WVtcq/R0WD1z
	Pt2nTyCaJ0QEf/H39YQxhcA/RH1ciaPX2fuW3Hgdr8Q/SkO+CT8qzExUHFc6iGw/Mwa
	oz58aaYeynb1+M74gNSjpmszXOYEJvG+VHXxIaLw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb4465dd2-7107370b-c300-4009-96aa-7911b6a085c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab7deb2b9e8f717db1a01a6e9b6edd44a9ed4c48f64fc66b001fae45a7a5b070
Date: Wed, 23 Mar 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647996984
