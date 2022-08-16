Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979761867
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660620052;
	h=To:Subject:From:Message-Id:Date;
	bh=COMdOUEo+sCJ81jAoMHyF1PEEsTbvtt3iH7bvVwGkOM=;
	b=dTxZHCOfJqb4Jh7jsWtTsZVhNeqkfgcx795nY9hi1rg+GrItQquyVdxDn+wOqNvV
	WCONf7zrQcobE06sc6KibJvxa1qcC73jQnWuSy2PIq4rlCz2ENOJIK949jcl3qvSIT4
	JB+d/44CtKG4KoEoq7Cl+Bjx0BNCMqH0n3+r49Zo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660620052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=COMdOUEo+sCJ81jAoMHyF1PEEsTbvtt3iH7bvVwGkOM=;
	b=VkfHsDGE0qwp3PTjKnr0J4URVD1fbvRgPt5Er2gDRyKvyvATMtxpxtYNJOcistXe
	Cc/qXu2f8pa7Z9k9G8NqRjMRUqVCD/AZwns9CXUGk3+4EweYEZ3BSru7FwYUX29f/74
	it/dMgk2+9QZOyLB0Sva+yqidbiGgN5l7gatrxhU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a4ab188e-db3669ba-5d13-440b-93df-022312ac485f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 362fc0cfbdae21dbadde244bbf96bb3df6cdd244fe7f38ac4b5cc85862ae326d
Date: Tue, 16 Aug 2022 03:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660620052
