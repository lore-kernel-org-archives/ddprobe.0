Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B7C7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 14:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654612079;
	h=To:Subject:From:Message-Id:Date;
	bh=OtWSTuVxtaDe8XgEyi2RdBv4WOP1CreteunMVpI1eNM=;
	b=MFe4ERJMUfLHZPpma4QSRloWxCavvpT9YpAnsdHoY8/A24/jbHcbeZU1srohsfCY
	zfXlQm/Pm+qx9O265WXSDvmyw0MVKQGCQTOZDi0OJLRmd+CV+15V/IO4V5B0c4k967m
	mVGsKA0/hIWg9UX2ZXLjf9EGZcb4EZUeTJmZ/r5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654612079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OtWSTuVxtaDe8XgEyi2RdBv4WOP1CreteunMVpI1eNM=;
	b=iB2e+5JrLTJmCY4tEmT9pO/ATTUk+bHnMdlSfHqbTGhVX1xkH3tAoRUsOpx/1gLc
	Sc3C44miLgIRWah4P41wBLWu5QqkqGDyVeccIggKy018aaUt798OHN8OwiL8AA36cn5
	CrQJX27FirNXaA2bvoTLyZNQtHYAsMm4PCurrduA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e90b2c1-f99c74ef-b261-4b59-8224-c73db01c726d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d7911b87247360a0758c449b5306b663c5771277d6dfa1b425d647997343aee
Date: Tue, 7 Jun 2022 14:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654612079
