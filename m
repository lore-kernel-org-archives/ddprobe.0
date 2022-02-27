Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D734B4A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645983685;
	h=To:Subject:From:Message-Id:Date;
	bh=lCOIkniYthC63JmC7XIFejCeXmA8MJWRIb8nPxQV1Ww=;
	b=dRVv+/x3rYfZ2pngiR9NLZuB7gKjqpFKS3fKLt8Bx1cPS4sZ+TtliG1NKRC/zY9F
	u7Tq3Roc01QdCqCRDpDlegflCnH2QhdVFDsyvM2IPtYf3PU+u86N+GDyAqzmYR/KcVs
	UHnAr1OhgrK4rbQ+gnECptUxRDuUhmybv6DhH4yI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645983685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lCOIkniYthC63JmC7XIFejCeXmA8MJWRIb8nPxQV1Ww=;
	b=lxMZL68X61vdp3a5taqdXoojoHaudoyDC7QFgtOgRg/gEanRbU3dVo8VeDvpNzi8
	6/9RBwpj/py+DeaL+xd7feTW1dQPOFyrg8L6uk/1C532jSdDEuZ+3/7aslbL2aWMezn
	lzHCmslrAl+IYfi7kzdAX9JGPLPwLerRUravtTq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c45d8d8-7f27cc98-b834-4666-93da-592cd05ff134-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b18a1d7d1910224e72a730ea140e36ba5ad3c5791e60b778aaddef571da8166
Date: Sun, 27 Feb 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645983684
