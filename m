Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09775A52
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 06:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652681339;
	h=To:Subject:From:Message-Id:Date;
	bh=5bYcPJB+/SRGx1ygiwMPqmjTBmi4xY2wOJ8b1YCHRYk=;
	b=MC1VB1GxmNauyBkBi0gI3o4na3zz3kuW6yz6HyZj6IhkeNEKghkoQdSOq0PrqRCc
	14OcwFdrHs94WBlGzBtltXmpZa0v6d6oNOjK3I4vM6svwACcWWwn/HE1+IHgukGl5/L
	E9nCahW8RxEB/K00Eh6XEUG4y/ky08+TnKBiwMt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652681339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5bYcPJB+/SRGx1ygiwMPqmjTBmi4xY2wOJ8b1YCHRYk=;
	b=NcMm9otdF2mdyCVhokfR/f7vPj3uAr8xg3TT0zhWTbUGcImf3WMutxUad5kFxnzv
	zi3Bb9maefvpRL2CNIHIn9p5o9G6Y5hjuyKqQZuFOapezWsiq1d2PfnHyYAxUSr2UFH
	y6RFt5xdPS/0VO7i0ae0EPdaqLAt7DOn0qFZ/9sk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cb7bf184-1849a2db-b5ee-4d63-988a-75fcb0910bdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d93221e187d6c232c09b46f4c5ff50aae83f357d3c77eba0385d7cd2c54eeb8
Date: Mon, 16 May 2022 06:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652681339
