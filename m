Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE397A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 22:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650236098;
	h=To:Subject:From:Message-Id:Date;
	bh=XqzPPVtrCF+rO9y2YMWaH8emVPYbkUyNRCO8XQmRpfI=;
	b=A6pQdgeJVGeZXB/hmYin3nn+Ye7bz1wezesInhpsgJQqM3uuDNvW/508M6+TN3mM
	lNR03poDmP9SanudVzQFSFCQ+zop0U+7og9iVHNSXYOjbFS562LoxUCNP+Xnkdro9Jg
	Xx+QQaNGSiDvaL6bhWctjWa8JYA0PPv2LYBN+6jo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650236098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XqzPPVtrCF+rO9y2YMWaH8emVPYbkUyNRCO8XQmRpfI=;
	b=eNtdMWAH1nm4ls/Zoz1eUslIeKITp6BEi7LoKHG+RUtV6sXRu3V/dLKSXWs7P7ue
	dGokfSkW/T2CTjQIKInYMgJBWfW1Z+qreLH7akddCRCpjGVx8Oz/ysr5Hbfkk/0d2Hy
	DEflYPTIjFZIwcR1H69kmWcKk7M1b55D1B1OZ/zg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018039bc86d2-5d9b6ce8-aa24-4838-8c44-3967165a9b2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74b3d778e9055681be584eaef1563af33d699804821c61d9bdf756b1a9baa5ba
Date: Sun, 17 Apr 2022 22:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650236098
