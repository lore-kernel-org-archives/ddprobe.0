Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FFC2562
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 16:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654099739;
	h=To:Subject:From:Message-Id:Date;
	bh=PvBm1YZigPA/Sj4qRY103svvrX4ZUOlgsaG/dBs6nIE=;
	b=TUsidJAPTXqI+9M7OPDmZLfqMmMT56NEcRxdwJ2O/riiUHQoyKPuW5WWpPxEhBfL
	C/p7CvhvleObL4jkBkxfxhOJovHLeBjVC4RaLDqCP7hl26wJLM9eUA4CAaxegzJygX7
	WOiFX4ho4IC69CM5wUxcBSRy6bRDw8NDTaMEwbt0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654099739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PvBm1YZigPA/Sj4qRY103svvrX4ZUOlgsaG/dBs6nIE=;
	b=PeD69LkINlCnVNniftZ+5e845kLrvG5mu+ykkteCmIJo9qn/JiIUfCVjz2nvLdXE
	uixpaaa4NKxuDqyxGyAwUxan/S/5Ouwbf2xUegEStmrzWkTJ18RF818sAZSB2NTPAEL
	gUG/V6vb89BUtSr5NqLETTDQLE6x3Su4/0ybnj2k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018120070301-382e3d8c-a628-40ee-8bc1-6a16802f380c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaaab7a3f855c0743e180d37f226d11c4cb498df9ea0e38629948d043ae44ceb
Date: Wed, 1 Jun 2022 16:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654099739
