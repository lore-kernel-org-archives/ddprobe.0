Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B6615A5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 08:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649924818;
	h=To:Subject:From:Message-Id:Date;
	bh=FK8+nqRiqMKvj1VJDye3EO4VqgJdpJKxnO+/vYzFV4Y=;
	b=iL0Jpch0rDAzf3aZnzJN8PDXJrs/XXnRFBgGeA1iKUsFcbZFKR7fhkv50t2SAoiX
	QCeW5yozLWyz8rHj4E3gUh23xIHSFqIsLP9g9YQ2R4fTud83OTEhCBVaZKjjlesowex
	XulFyQ6GOauNVbSO1vFsXKtwTUbI86Yh9ycaK2z8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649924818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FK8+nqRiqMKvj1VJDye3EO4VqgJdpJKxnO+/vYzFV4Y=;
	b=c7WSUNYH/PipOpP1EmWEtbjI0fm/JAHDJOMnHALUKNEmWTOUU5CtSV7feHslOSHt
	h7QAySnEbmYG2DP/7LAMPrgn62wAAW3ZoT28VRvtrfDIgUA84vML5hjas6mGfNFaNgZ
	FwIMUYYNU7pFRYxqUZBkkwAYUalbMynT6sokQlhA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180272ec56d-c2009c55-b639-4709-81c2-46918cea285b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffee95ba2fdef231e58e583a3df609204867ba2c5f54945c84e3be0ff1fcc0a1
Date: Thu, 14 Apr 2022 08:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649924818
