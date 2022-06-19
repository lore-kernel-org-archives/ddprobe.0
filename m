Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0C47B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 09:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655630699;
	h=To:Subject:From:Message-Id:Date;
	bh=Bgv4b7hPC2M9EzBMiZIvgYzUjvR/wYs1T/2JhSW04HE=;
	b=K9+ThGv789xlCHs6mZv9e55OIB84dkL3HZrKrVDgII52W6rqNx5ueTEXpp3Pirg6
	t2e+namhOoXUdHF4MJO+s4idJgsWwv5VJDQsD/ygUhP6afTTQr1wh35BJ06/LEYwg/3
	gtdVYaukOXef2oNV6BfQ0qwVaPOmDQV/cIdDaYsI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655630699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bgv4b7hPC2M9EzBMiZIvgYzUjvR/wYs1T/2JhSW04HE=;
	b=NdGesHTQymjA05L16dzJor7fPnYLhCSsXE0oRTbY1YbwBwmjXPYyRBzNlt497AuM
	dcjqu0wTsbazNpa7bP0Qn5xmLogBnAKbJ9Ne+Lku46Bp9P7QZYPlO8YbUf1w0IR6lsG
	DacQ7H70y02v+d0NS9lUjE3JNn3Fi4sWk0J+hink=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b479b0e-b3368543-11d7-4504-b54c-06ab6342cf7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 361d061f070e974cead7977abda4499e2304167dc76c2937b8fa3913b8bd236b
Date: Sun, 19 Jun 2022 09:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655630698
