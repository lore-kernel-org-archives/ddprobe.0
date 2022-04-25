Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013797E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 04:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650862738;
	h=To:Subject:From:Message-Id:Date;
	bh=ZCuzc3SxJnm+J1s32nN3Kh4Jd+X0e6bpFAiUSSAYOCs=;
	b=kPGGGSmgqGqf5EgOL07doEXIkpChdI3yhdEL7mtHC+eSiGcq1+nbSjnuH4ODATQV
	Z8qT2C81Gw7gIi/dj2RqHVQxmT1srAGgNaCuCog2N/rzOHyJD4z6iiKfMwQiDYAmt4s
	V5ZgUZbrNXhqv0KvuSV7shdv+QGwGW7QAP3XTWa8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650862738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZCuzc3SxJnm+J1s32nN3Kh4Jd+X0e6bpFAiUSSAYOCs=;
	b=RbxzalQOh1NstxdL7lFWbaqTMw+cgWa2s3gdQ+bKJ6XWiRkDsMo40OZdefwhJC+N
	z4mMjJ0WDrd6F5IDYGePjGMaCpbWOLmba4BbtZI0mqG7b9X/isIq/iQaKT5iM+x3Ybx
	kW5b9arCYBV17zHhg4seh46W7STaNGD3iItpwNEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805f164b38-fa94500c-528a-4bde-8502-c20c5ba33c41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 903b08e010dc1dfaba4d85f07cfac149c9c49500d9bf7453492676a5c013fd77
Date: Mon, 25 Apr 2022 04:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650862738
