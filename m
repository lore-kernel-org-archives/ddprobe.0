Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8CC615E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645412784;
	h=To:Subject:From:Message-Id:Date;
	bh=D2DB0I0Ubnah2HPzN8snacRYx71PGzLQT7Md8LUyRp4=;
	b=RyQ0Jz984TUQnlAFy84D+oag55xe+SSr5IckboopxegG3qtbTsF36E2c/aOTN+Yy
	3xHW5yyBBFGSxE9ab/01GYCANhkgf1tJ2U8/NIFGmneCt7cA3ZBXsPnNo/tQprnAsYe
	MkUnG+ClD0heTCn8rA4QVChWzUiNHq7ZmnYBZ10k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645412784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D2DB0I0Ubnah2HPzN8snacRYx71PGzLQT7Md8LUyRp4=;
	b=acDnpe2+2Zz7RLUceGP/EblT4SGgIBk4nUOO/yOKRwbsUcjLn1YoygP5RLi74/uc
	YHAtEeSaEoU/x/5MR1rJR9VDl3DAu4uwWAimahzTHpe48D22C0PXGj59jmCEnA/tRoA
	Vlz/c93kBcvad0YMSh3+VkEda1+fgNoLacoc6jg0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a3e9a5d-b375795a-09ef-48a9-8b1b-e6c51721387d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e454e21776fbb99cc4075acb777bfe37e2fd57b243d88c64c0ce7351c0c7b1c
Date: Mon, 21 Feb 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645412784
