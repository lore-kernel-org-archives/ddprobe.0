Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554127B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661175052;
	h=To:Subject:From:Message-Id:Date;
	bh=mwzZ9CBPpZUKI2KlA68KArR/jEiquxzL0t9BGxk7KBU=;
	b=GGfCidx9n/7wA4P7sQYDNxLyKWMYDY7ElZ6CUFoHW4Oh50bSc5SJEi8pwYjLitKY
	E0G/ee2KCK5e5k0Zw6dyz+8vKlxkZNP7hrrcYSkXvCBkVeiyQ4vndVu8Y3zZjcIrZMS
	sDaL8jPM7wH6pdov5JWMA1dEz9Aqu8OaukIHKlvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661175052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mwzZ9CBPpZUKI2KlA68KArR/jEiquxzL0t9BGxk7KBU=;
	b=HoDC19xjwd1z6IX99ERrjNze+OH/lHvImBQZ6Thgv0WZAOSUsrbGNMVGaF+qmhf6
	QO90yCrGdM1KmYFVGBEsKep2TxY+MryqqaQ9Z0/PyFEBymjENqJpKBrqHyyE3sPPSlo
	iUsmLrl+PbwM9GK6vHbSDHv5+hCCijUrvndyIba8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c5bfb937-c2572af4-09e3-4e7f-b663-1f5a0fec1ae3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f5ac253b14d2dacaac071149e743de970f24f73eb100675be515ba660a92307
Date: Mon, 22 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661175052
