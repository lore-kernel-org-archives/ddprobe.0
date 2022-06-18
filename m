Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1137B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 05:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655531099;
	h=To:Subject:From:Message-Id:Date;
	bh=CBFideSbVCrJWcy2THOGm9sSn5+yZ7GajOE5UU1Lu1Y=;
	b=EoOnN911HOpigqV72+L4RLNvfcr77BJL36CgCD0sO/tYreqolspBGEBhOpRUnCGw
	VnMyNgkBm99dFB5UC2QQfF785akutoVEUUSQ2jjLBU47UGNFgaGNuMbCH2kESKFBThC
	dL5jS/uxqZW0kAeVem70fSMgeIniDO1iAJa3lc8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655531099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CBFideSbVCrJWcy2THOGm9sSn5+yZ7GajOE5UU1Lu1Y=;
	b=RWRmiXoFEykgH+iYuR1IHDVIV4sXZgS0b5vBL+2Qo8bs9+9ag5eoEvgSfqxTIt+n
	BKPx5rGWXyuGYsvkNt/2jHsY3c6/KMgstNqhXx19dKinVSKt9wy50DwXHZk+T0HtWUB
	RFYJhNB5z+SIpjYQK8RPVrjR8hOCogFT6cw+bN68=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817557d461-d550733f-28c9-419a-9beb-1f73afabdbd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf1b40df745b0ca886e14fea6b17e33dd72b12e1343897cda849452685bce8b3
Date: Sat, 18 Jun 2022 05:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655531099
