Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2742CA7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657666012;
	h=To:Subject:From:Message-Id:Date;
	bh=125BtX0sOJrBryqitQclHihFeSGQ/IlQxK72l9Mn9AQ=;
	b=EX81R45TXmuJJlIAC1TZZb17pTJS4sUn2BpVD4qUM7W4dHHnP5nRdvbMj6oyFCzn
	yc6wVOxAJAvz3lDC1HDtaiAOnTotfSuD+b/GicC0tj+2mNjDgN/yG8t35ZnVeg5BuPy
	v6KfzeBmKYYlBOSRTDhZw/WHjs4M6hh3e/viLToQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657666012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=125BtX0sOJrBryqitQclHihFeSGQ/IlQxK72l9Mn9AQ=;
	b=PvjRVE7xp3TxQoz2jAiSty0nY7Qr3tlpJ3zh66hP4rZTaqdS6tWZNWXBcWg30I3u
	X/1rLuyz8cO2JLnC5aEZkkh5WbH42ZsmTCnWJCgZUIkezWBM/poTknKESoe010Vb9Ll
	WqDJAd8sYQtYlTBZBXf3WLoE+wCSBLrY03QEJefg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f49804ac-2148ba0e-d68a-47ad-95e5-83860a05b4f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56f2350697f7244fcf8be3cee167aa8113165de7cf114be562fe8368acfce9b5
Date: Tue, 12 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657666012
