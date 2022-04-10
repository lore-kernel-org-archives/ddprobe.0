Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0596E1375
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 16:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649607178;
	h=To:Subject:From:Message-Id:Date;
	bh=2KhSnv2zGdVfh5nNBg9RYhsLsrGvtiIGY0sM0Z4x/20=;
	b=N121erNl+78FsmXafwqqA2ZaTlFr3FwM3qbcRyvT83CJg+geKJmntruqt6YTZI5/
	8UYC3JntXW9ehZLNjHjUO911i16SMurwe3HWBGkDEzX9C3Fn9pzO3S6Mq0bO9zG0cuA
	s+PviAm1+/w8d4MHYApkMchSoboIiLxM9PItEymc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649607178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2KhSnv2zGdVfh5nNBg9RYhsLsrGvtiIGY0sM0Z4x/20=;
	b=jdha9aKmLkEfOcXPHjdxXoy8bUOSPwGQMvjKlgKQL3NbHCGgRsqlKKjJsBeWSYnR
	O9lxxVaB7ypB8UXI6uQBSOx9mp8pr6eJRxECqcqGYCN6hd7Z3qbmBQ1ie3X44TRmwq+
	MefLRR9Dd8pAtZWOAzJseLfV9N2Oiwx2gS0pgc20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180143ff804-185526f0-acae-41c2-8932-61f15cae8bc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65d23a2af460a5017389ba2515140b0b1fdaf365d2189c3d734afdf81a699b3f
Date: Sun, 10 Apr 2022 16:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649607178
