Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92BA10E6
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 03:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651978858;
	h=To:Subject:From:Message-Id:Date;
	bh=7Iff0BlZJ4T96zAOvk/VRVKF1N9cubFb6h6dtLOQoso=;
	b=I4xQc3xWkx5mQ80cNowd4Af7vxY4zSBm49TOnwbSaQqks77h785v6h23BEbynBco
	vxqLrLm8RYLiFDHWkRBz6nI2b424UgJpLXMNsv7/tY72uYzyKLuTeYj30uZYUh+qsm2
	xQz/vg0B/b2vt5CBR85SnlDRavj/TS6p5oLTb9jU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651978858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Iff0BlZJ4T96zAOvk/VRVKF1N9cubFb6h6dtLOQoso=;
	b=SgnpPsecwZ4RN96m5cl+dUelq6nshQWREQkFg/2C2f4Jc+CBmyt9/Nh2Lf951Y8H
	DRUsAaAkGgyWuyuxkbP/xC4aqYB58lUnsOy+qn/8d4sbBXTt0TA8pr3A0M2iyS4FNaE
	96p7KwRhsKznlupsk7XTpjqYTgfHO6IMr+VJPDRM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a19cef2b-1f0bc230-21f3-4e0f-b13a-894f1de5ecb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82e4ffb16a5862ed3e034037d8d8293d3a27c98e66ebd8149d3ac907daab643e
Date: Sun, 8 May 2022 03:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651978858
