Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE96A6027
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657058212;
	h=To:Subject:From:Message-Id:Date;
	bh=3BGZ7VxELV27L4dYwcbYAE1IFm9v86fTeoboBkhbR1Q=;
	b=d64yd6AEfV5gcOD0wX3YFjCKevFwWbYpY1KNd0IsoO4Hqe2KWnWT6VHl8f3H2zZ3
	XsKJ1aYGM9XlULj3ALNdcW3ojVcJ1bDc4ri49QWfSCXcDvpIE5LaE0Ry6lTYx0Zlcca
	16KBRHaETvVLOkwp9y9MmEg6IQSmbIfK8dg8D9Rg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657058212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3BGZ7VxELV27L4dYwcbYAE1IFm9v86fTeoboBkhbR1Q=;
	b=XSlkMiLS6/S57aFSD5WKIobWvS/wpdHtcZ+vrvAdkzbOEWcJtkA4A3KahPi4OYX6
	NvsZP6O+TDIy7df2E85cdXFgQ9qjp1dcpnuGVki0T5JV8/Ur/fYPe/7H/vBQ7yGscfX
	dSHhdcKWYPTw5x83M5f390oPKYicd6zi/XbAlM7s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d05db9d5-691ceede-c4a3-44fc-a0c5-50eb3799c973-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 292fa52f5ecaa9c1a53896c6e908455311f6f80426e94a72d23b221b94cac844
Date: Tue, 5 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657058212
