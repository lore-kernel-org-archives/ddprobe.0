Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345AE7C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 07:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654674359;
	h=To:Subject:From:Message-Id:Date;
	bh=GdxgWLcdLNsZkEx1ubTdjVv/y38nzbYwZycvfZnS+gw=;
	b=B0lGa/epMc6kWWtmF37OhyPCadz0yajCdfCKF7LWjVc9XkqxW/r5+3Ymb46MHiGz
	+y0m/zM/blfMZFJUrFgeb9HdvqEGQO6KQP4Y/wdkYUH01c0mngW1CHpIYFAAoAbN9Cf
	4TYNvfr/qWTygqUV2o0OhSaLGtbQqABzu2lW/1Rg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654674359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GdxgWLcdLNsZkEx1ubTdjVv/y38nzbYwZycvfZnS+gw=;
	b=VGs91FzxjyQud5PPbVcdMbeE0xj7o/q9TucXG8Zy2tA3k5TRqfpzpm3ctv/rtLq3
	PIuwKv1J/jpRxee218OMeyQg1qV/Ure/iKnHagAedUiX3xRyRPlBo2laTSnwVpt7WKN
	gHGAulPHTm89nq37T+3ytVgm6SAJPqAjnPTm475w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181424703e3-e59dc98e-42de-452c-9519-aa3ce9aa11cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a43e039da8a130bbe2e3f9c09a252b3687443cf491e6fea9511483f07048bef3
Date: Wed, 8 Jun 2022 07:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654674359
