Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E447A
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 20:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654029419;
	h=To:Subject:From:Message-Id:Date;
	bh=hP7ajt7yrwq3C/GQSqhOsKY7ZoE9aimM4l9TaKkueIY=;
	b=RKBvXLtMWmTtOeZ2ftrcoJTX0WHG/KIRehWPBpeh+J5jQhbQAsOcK+hq3VTnJSsz
	LfbOiIoGFTiXt7u1w5oN4KLJF8f7lYSHFL8IkDX/jJhWIRCVMIOMGNMkG+mfjTiGMjD
	Nz4OGxHf7g0W3SIqh9bRNO4gt9xcuh9VrwB4EE68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654029419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hP7ajt7yrwq3C/GQSqhOsKY7ZoE9aimM4l9TaKkueIY=;
	b=CzUWJ+Ky+g4uuhi5Znz15bgeGwdOl7pU/m8RjPv09xaIFr/0pO3rPEGTERPPJjid
	mrsijUBn/HzYylqdyRb8fdxUkIzXDKiNN68ldq51jBkZ86XjdzQ/rJaEtrsjaksrbI4
	01LALHTkQaacFFH9WZhPR2jhCp1dwuav1uYvDoUQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811bd602f7-4cea842e-e404-4e27-9e42-28a65c71a7aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 850b0132b7b2900d687b5cec9a714d1ac47e1761baf4b3f47e7bc6a919c8fef4
Date: Tue, 31 May 2022 20:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654029419
