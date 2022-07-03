Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B301FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 09:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656839812;
	h=To:Subject:From:Message-Id:Date;
	bh=gz0rgFxb6Yojm6lpOh0o1MufIO03rmpCV5bnjd+nTh8=;
	b=DpFP3UAwy/CFCIqbuifx0zH/7ZkkUWM25VjdAqVTixrkGkVlIzsVI2mP8ktkH5Zu
	/gGRcULPcBxdSEOHytV6GPYf5LF7/zVJFjC+c42OJpLONCBUOiJIB0nlGSNpbH86X6t
	zbjYuLppdRP4cVO5JnZb2e6zwfEN5b/34JzAaCCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656839812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gz0rgFxb6Yojm6lpOh0o1MufIO03rmpCV5bnjd+nTh8=;
	b=hslfm9E/mlv5x0XahlP3MCIoP+9YoIISUW1iV7WsgbA5X387yMPswHwKzbyUe5od
	fcYq1z4YwrXchhvtHr6J1C/domCuJMW2R25CusSB6YYNoo91LvDTkgbarfwATvyGjzn
	CftAuk5K1iKQ1RNHpuTNMrp+14ILD0YV6Ksg0zwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c35934ea-2503a3a0-9373-4692-8f06-96bfee1b3a82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc139179b318772be09ccafa58c66e36e555f4066fb4ac0658a1955948b270a8
Date: Sun, 3 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656839812
