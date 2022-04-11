Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAA67B
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 15:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649692078;
	h=To:Subject:From:Message-Id:Date;
	bh=2NswOxSEM+FwejzKERgMxBOFw3ddf7QTj6TUvESaCY0=;
	b=ST0AvOPFRWMsH8+wHeBj4okxNxOocM8x46LNNzavQzPlrJafDmhZJHaARx68GqIR
	DCbMKUd7sqdw2GlhRPKOpVNsFvhyAd0cApcRVGkLYp99EPMOKfkR+fIok3FFTysCmlr
	EBtHbhZ/tfTz1vHLE6tn/4wxGdWg+GQbORYQrSMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649692078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2NswOxSEM+FwejzKERgMxBOFw3ddf7QTj6TUvESaCY0=;
	b=O3ZuDVSzTdudy2IMOGu2JNyIlV7IxIQ3tRuT37wz+o52dw9PjDrti6SZ4i76+6Tc
	VyfMM1PCQ0k4/4P52Vv5RkCrMY/xluTFX+rC7ZMnw0xJ9qdsWAp6wKoQRSY3zZQdyoq
	BKEAte1j4Mx6vrRMsxfuR/wlwoQqWPykUm3mjcPI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180194f70b8-4b5722a9-6725-4d79-86cf-79a5f56453dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1409b6c4c5f18401580d4b9a962e2cc23878be368eb3487a5b084e76db523808
Date: Mon, 11 Apr 2022 15:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649692078
