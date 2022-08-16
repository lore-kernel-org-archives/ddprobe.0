Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825306AAE
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660676452;
	h=To:Subject:From:Message-Id:Date;
	bh=uP2sLggfISh4v8qqLsZ6VngWH7uKk/1yPZH0LFnKGd4=;
	b=lCNFN80j0h7EMxSnqFclm20hmA3VkaeCVdsiBVKcMAe3ld/imdGS0Jc07TTxNwRJ
	TziltYPoQSYRnZ5yI3xa8j/fo6tIW+PqgaCoSYhojwuEHDaonweqdFhdsyfAnRVEv05
	ztmYv0JhcD5zqCWbISXvzDVna6Ppiq/KB3dns6TA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660676452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uP2sLggfISh4v8qqLsZ6VngWH7uKk/1yPZH0LFnKGd4=;
	b=Xo3sYFdLSL5zU1TU0rTcDRhV3ZH5BmdoTrkzB2tcChmmFYQMjZCkr2RBgTvFann4
	zeruZtgo9bh5vz8olzUMMstLDx1cjCbQfhE5KqgnDgVa/JQaKygYlSzuXJM+lNddO3Z
	c3wn+O6I1Hm7U5oThtmM9hBeTKEXeHBmkVgmtzQs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a807b127-5a193b98-31e8-4628-af2f-13f6714be14b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28979ed48d5a5c7eba719074eb961d707d2efd7b0d6ff08fb1b34856a4b616af
Date: Tue, 16 Aug 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660676452
