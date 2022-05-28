Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A71A28E4
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 15:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653750539;
	h=To:Subject:From:Message-Id:Date;
	bh=xNowJKaKt8ddD5dwhfS6kYZM/iclHNFCk8bxdaF0l9Q=;
	b=M1cI1P9EV7NDPlBvlPKu9WsCpDWoRGpgV66wg29YLpnSbEifcN5da8D2nlEyRfvY
	cerHEVGSNgb6zixM2nyx6p6WrRZdY3pO9SUr6mZrbDs2veMXYw3gaSNwJ1kqACQ/wpJ
	VffxO+a/bidK1Pkg5AXX2gSOrdua4/VxLUYgkP38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653750539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xNowJKaKt8ddD5dwhfS6kYZM/iclHNFCk8bxdaF0l9Q=;
	b=Utzf4TEZuUy5kJihBpxX29xdIIKZAuc2Randt70Dxtymd6KFRd80mNA6hVD/dgjF
	h9/ieuRnqfTjc+L2YD1O5SIE8UlrI1k9c9T4ogxiJ1A6utxex6vn7hWJyEfqU8eu/YR
	sMkczmIc0YxPkLBBKZqX1S7DI798gaepODTzEQus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810b36a40a-fa96290f-f913-473a-88db-da185ec4e203-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bf568c85ef6b440a9076eeafaab8e91017dc9d6da3c7cbc82f134373d3a8170
Date: Sat, 28 May 2022 15:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653750539
