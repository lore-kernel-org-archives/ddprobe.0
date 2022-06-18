Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD947B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 03:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655523359;
	h=To:Subject:From:Message-Id:Date;
	bh=pYotdDpROltCnURI9nhsfHPM6vj8wyUkpzAw3+cD/Og=;
	b=PtARfNVOtSlr0fGaEHhJ3VGogx5OWQ32EU1Wokt+XvaspV/1NfIWfBtGFxbrZ5l3
	eqtHynx3PGh0D8VyeQJTbWll+I0mkrFTVpuQ6WWpkKQvfpNVgHsz/S04W2IAxJPlFW3
	qoRe0dEsL6n7Irb/bnE+/pbyNlnYch7gQ1hBMBGg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655523359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pYotdDpROltCnURI9nhsfHPM6vj8wyUkpzAw3+cD/Og=;
	b=K1PZhhBI4dMXrxx1eVGnXQcEwjdRcD4ceugEE7GMZrtKicoNfxkbfIGZoPnO4lmy
	/WP0H8tGpSIE68Hqd5V8dKn5oKMmVFjV8UUcdyfiH5MBAP26ZMW126SR9om59oNZg1U
	cKNWBp0Z05XE+lOLw5u4DcCZCaaReQoBTY9bm8EY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018174e1ba27-effe493e-91d7-401c-b450-098a815e0a1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eeff16202e04378b418e38e692a1974b814742abe06b7ebb4cf6eb89fdce319a
Date: Sat, 18 Jun 2022 03:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655523359
