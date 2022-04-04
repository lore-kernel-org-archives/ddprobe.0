Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31DD7C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 09:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649064778;
	h=To:Subject:From:Message-Id:Date;
	bh=QMx+H6dpeRSnaNZ7E87lo4KGxP/CU3Xa3p8WTsyQi5E=;
	b=UvotQwbCFG3GFiU+mFVzencaStGdxgfrmUTZwpoRqhvvgDAX5aBBtoVyKPbyWIJ0
	m3AKdEBfpbkeqjZ6gdFsOoSjSSerrnN2JLoU3juRA/thAk7xnCE4YbpcKM6bmS4OUVV
	bwTXpS9zWh/+hCDHqedCpcjhiCgmtKaOX3ZX55ao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649064778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QMx+H6dpeRSnaNZ7E87lo4KGxP/CU3Xa3p8WTsyQi5E=;
	b=Lr+YQNdE4wS3G3P4DBVrXXstVzHyaguSQwcWT2MORpIwhiiRVVjHOkInIDOlJ2qW
	cGY39brYqRYGYB8ygGK/wKVl36OPAfTj3p6/eqCzwtFVVYF+63c9CbRICFOxMbIrliZ
	z94U9NEJkpgRN8+RKYjzy5wFVBhJwRh4e+07s3to=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff3eb9a11-50b97813-124c-4217-8deb-1a96b2068109-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3f4cd56df22718d8d7b6007a5ceb9c40c14c7280eaa2388a2d1748aa71741af
Date: Mon, 4 Apr 2022 09:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649064778
