Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210BB1848
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 14:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657462612;
	h=To:Subject:From:Message-Id:Date;
	bh=pflSoIc9qlXAQ76mRzBpXOT153WUQl1Hz2PmD55fgjc=;
	b=cYmFQ+eo5xIdh4gohasnV7XWvCJzjTPdeJmW4EejD5fvhZbMRDgZ2vUm87kh7viq
	+q3GGAkcVQIR5FYtRLtl8x8WBWLQcTva8I9d4/4Qx/cDyhG/zmxMDNsVf2lSrGtPeiV
	Y+ZgDtsWFoFo9+BMAxCTuRQzEZRiJ21UTsvmDTvw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657462612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pflSoIc9qlXAQ76mRzBpXOT153WUQl1Hz2PmD55fgjc=;
	b=GV+Fmn1r1a55jj9+odlJi9iTdg9jalhDcRbriP7ZjK8iO4cQVXD/ddvkm2QF77c9
	Q9Tg6Q0SZjvGNFhPL7rqq1zO4lEgJwEIqgM2+/aroZmi4A8eZFNlispE/7YdbLd7cnE
	LBTnPMGSt80dOu1MzSmDKJIvlRm/8idNULaKn9S0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e8786190-c9506ce5-63c0-4c39-aab2-acdc424a76a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f24fbc1ee656056c584d59e22e6ae513a72cbe08e742a0feaa525e339e8fb18
Date: Sun, 10 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657462612
