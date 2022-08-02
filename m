Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82BD47F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659445853;
	h=To:Subject:From:Message-Id:Date;
	bh=6M03qIYM2XotzO3CbTEz/BwjLV237xCnofJXoeRf1cU=;
	b=TjyLujhf4Ddxk+n4+cySKenQQjBp2DzGfOst01KqYnXjQM+jNteq9HRr2HC81yg3
	HbmJxSac/3GlctaNZJlMAqnZ8qvA1zbooco+6fiTc8U2ws8qM73i2cQYQFyg8tkvBT8
	8oM/lT7KjcqgEBONofDR66XvIxAm/ezWF3Z8ok9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659445853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6M03qIYM2XotzO3CbTEz/BwjLV237xCnofJXoeRf1cU=;
	b=CXXSMdnwSGXRnPrsnRAqHQnwKYa2e+flGDXLfU5C4FpZUTGlXRxGngAnpij9dQhs
	P/Tv6DSLeB4HiQJMu2qqiytV0F1GZ45zS/ATEiNDjhR5m3Do3IxG7CF8qD7WddnVh97
	nLbme9ZVHrQWMXUDCKZYzJIogCtkxM+enI3M7oQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825eae3992-29e75543-f088-45bb-bed9-564322fb6a20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f5fcb522f2ea46f6c264b875a0148468395aae9b413271897ad74e6352bfd4d
Date: Tue, 2 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659445852
