Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172394687
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 02:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655173739;
	h=To:Subject:From:Message-Id:Date;
	bh=WUUUWSx1Ba2XMK4BmXXV5L5sE60IvFOJc8e3r3Ts/j0=;
	b=WXH5ggscoe0sszYuoQG+0Pr+GUkHX70pVCoTtbqqGCL9IIele2GcBGia9ILuku7o
	jTi+tb6t690tE1jAFTqgi5uH1dTWDGDKGoFJ9X9w1mChIVFCho72jEr/1CQ0VBqkSbi
	niENfqS3UeY8U+UaHxDYZ2Qw8x0v3YEUDw3eWDBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655173739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WUUUWSx1Ba2XMK4BmXXV5L5sE60IvFOJc8e3r3Ts/j0=;
	b=SwfZxQbepXVibu9GwMXPfg0vj2m7R8jxudYDkjLeoy5+CK6WzZ0NRb1BCjdvVwgc
	rmfnd4VUFZaCgKeCHgUowBu7s2Hp5de3MSm+bHZleVh8JwCb+B2WkO+gAtJTXL/EHEd
	4YZVdQUOtDf2oDZByXch5+dv067h3Y5tzzCi3994=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181600af31b-21d1c3dc-df6c-4f68-91fa-c2590a9d891f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87ac6b294bbde1f1f208a640821a1ce0d8699c241e593288ee64f66d09cbab80
Date: Tue, 14 Jun 2022 02:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655173739
