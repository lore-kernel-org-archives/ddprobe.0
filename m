Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDA41865
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 02:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657507012;
	h=To:Subject:From:Message-Id:Date;
	bh=EabZ55XTpgcZ9P/ymq4L53inaat9gzP4MnGBV14VYlE=;
	b=FbCuRgZKOl9U+UjCcHVu87J6wMGu94anAUPfUV3jbzmjKjUUhpbHX6bDehS0arVV
	d0spkg+LKkEtiyhFnRxvnu+QoERutiNNR48Brfb8NnJLnC3/avOHwXSvHlyysytehpU
	XDJfpDftAUnbwF4FFjGA7nG+weQtEypJVCxuVL3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657507012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EabZ55XTpgcZ9P/ymq4L53inaat9gzP4MnGBV14VYlE=;
	b=V80YLs9LosQqv3IzCqTun9lFxBetn+HGT9QEqmLvBn66SLYZmnBy38x9hvYQoy/Q
	hh+iK+zHDt1el4cSQPcRCRkHnZ25JYqnGnFyrA8dgKyUROZlxTOju4rQR+bNffRkH8P
	oYZ5q2gjLkdgkbBBXLsd5egoYmWY154LEURSEJBg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eb1ddec8-a6c1e61c-525c-463e-96be-26de4f90bf66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9eca105c080bad650baab09b3b69da535f9258186673ea940e6d1d85fc03b505
Date: Mon, 11 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657507012
