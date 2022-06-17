Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995EF4C78
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 19:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655495460;
	h=To:Subject:From:Message-Id:Date;
	bh=xrWbP3ke+TO55pES6SnFCAnc177Dp0sOtwPy/BHqK9Q=;
	b=czDJa2TSAglMUYnzJ3iq2doA1Oi2kRGJIxChCojhIa8KuVtE0K+sWQd5PzZgJpQW
	IoU1Q8l4NW3NtG+/N1Ef82ihe55fJ48kq1rrOZ8JjVp5asP8JX8dfrTmbIdyka006Gn
	3Rb1JgjBLen0qSEpegB4DxnzIKZUakucKe6jzeHY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655495460;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xrWbP3ke+TO55pES6SnFCAnc177Dp0sOtwPy/BHqK9Q=;
	b=DJnUxMbUFlV2E2W2JCJ20eXN6v2jTSV2XaUL4/pZjlNfUUZ/9TTcHG1WV625pgnB
	99nhJJ4PLBVordUxqA5+jOnYuopUopjeoQAdBkRt5qY7AY1Jpl+ojnjzsVDKtL/fjD4
	m99++yFewgxmfJT6giVUAY7CYcqM9oqiYVDBOMHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181733801da-2c612547-622e-43db-bf67-d90273ba959b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c350ff9074ae724f812cb94ef7aa00ceab79c1176e0b474b65f0a97fe9dbf1a
Date: Fri, 17 Jun 2022 19:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655495459
