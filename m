Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4A21851
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660616452;
	h=To:Subject:From:Message-Id:Date;
	bh=jqCubQXs1iJYrHEYbCfhqlPYr9kACegS55zMPtu1hdM=;
	b=HdMLFLQSgXGDno7tc2sdW2+Fcj+dZ0MNXZkzfHRXEzxzz/cue5RBC+yl10N7ESbt
	fpFTL/V0AlO9/vvdstfkbtI7w9aVMnckyoei43ZWUSOPkhDt4oemLiapvxQtaySRD4u
	aPuelAxwmdm1csRIwRqnTn/WpBoxnY18srQgDHHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660616452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jqCubQXs1iJYrHEYbCfhqlPYr9kACegS55zMPtu1hdM=;
	b=Cw2KlE+B4d3gtevMq+q1ECvaDTjjViMi2icio8oiRJvvFuPrQrNbv6VwNCPlIGh3
	yp1NOa7qVz0RRfNKNUvoDeXWA3eyfOpF8kq2s8oNE1ZJRFqidm6giBsl/M/bzijbVUB
	BbfZDj4Oq/u/lpZxYBmXEEy3U5P/9DjmY4PXXPSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a4742a05-2d3b576c-102d-47ab-868f-9b238b666128-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2600360dddfbdeafd8047afaece22a365e1a7ec4755db8afb2ef48a1b6c46060
Date: Tue, 16 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660616452
