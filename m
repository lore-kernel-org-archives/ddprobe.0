Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7C6EA8
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661301652;
	h=To:Subject:From:Message-Id:Date;
	bh=ZPEdT4n3X34zjDR5ftxiDuBrWuMnM60g+2/6QnxaRr0=;
	b=XbKYVu6aOQDjeOnFgmKMDA3Z9Ndg6qR3l9Z+PXawS4BC+mJx5ehPcP/tsfWciAwO
	RLmX8TvEfVGErsH4kvCHQ94WS77Gedr1YVIswpMGpZHZWGdOi91i4QL56e1XCx5CtlL
	d7T/lBHY3Y2IuW/Bt5c06KXOJZ8FuNVt57roxYiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661301652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZPEdT4n3X34zjDR5ftxiDuBrWuMnM60g+2/6QnxaRr0=;
	b=J2g4Tp9KzpOeuek9OMfXWsV63IPfLmDcGHqaVDCbr558BoyIb3V/9ftXOXQJCCUG
	+6bOZBH+mV9Fvlbhw6bAIsT/B8+TCQZ4Vh9L5FVccyKukPx1e3ZBJWr3YXUWK8t7W/q
	Apx7S/MAAaCwEasGgbKJigO+9iWiWQdUeOX5X5UU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cd4b7c4e-9fd93fbf-198c-4b27-92f1-3efb21a20dd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0027d7e6883620d9cedbde596cdeecbb2f1849ef3d33bc859ac9d3ab41cddb51
Date: Wed, 24 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661301652
