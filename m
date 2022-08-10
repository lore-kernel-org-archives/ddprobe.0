Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 710C517D3
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660129852;
	h=To:Subject:From:Message-Id:Date;
	bh=8LHlugdPeWPDIE0M0YEo8ryd0KTuBMsD14F3qrY62+o=;
	b=IV4+EZEAYKRx3g2s6/lPXS6c8ShxDbi4rZwGSuSjF/Tf7whkIDSP0+JE2Xj6Eck8
	VtrGWJC1uAPrSj0hEr3+IW2jKQ2JWmi3kJbtyAxM9HWmvEAIj0S79HrlyWLIKTW7Bqg
	LKLXDzXFaNmWiiQuTKoNdvoockwlqHOYTyrA09lA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660129852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8LHlugdPeWPDIE0M0YEo8ryd0KTuBMsD14F3qrY62+o=;
	b=OqPJT1qG/Y3QTjy0wZHlEOwe4v0AkXhGgXiPoT9uRUh/s4fDZKD/T/qCYr7h3PJH
	iqd4lfFjkZf81WtzRbd60LENsvETdrUzDy9p+arehS7JeLi/iKbHYVdA2bIZHwSeV59
	91U6pgQ37etCtBw1PD1SGvSyyvZWJx1lgn1Awrbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018287733c97-ce2764ec-0083-40e8-9ad3-07336507ba1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ee9e08e592497e9413066a29d3566011f770eaeef411ae61315461720c0d131
Date: Wed, 10 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660129852
