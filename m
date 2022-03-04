Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C887E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646354784;
	h=To:Subject:From:Message-Id:Date;
	bh=R/afgH+bo0yuXKd+IH0/dlFVCkc+Rr5B1vRd3xauTe4=;
	b=JA8nL15BLR82FKXDmdFvbmgp+/T+1caNyeIVTq0MA01Ue2HAyLgaF0O91jXAV3X2
	hisjuNFQNCNWv3teIi9/50jkijqVwZB/ZEh9CdY93rsf58Ozl8j3nsjqC1XoXjt2dY1
	GN1w1KaN/wF0Wtu9ikr71QMI4e5AQ6489FTVyzQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646354784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R/afgH+bo0yuXKd+IH0/dlFVCkc+Rr5B1vRd3xauTe4=;
	b=DNX9yCrSeZEqkBAxeEmuzVDH64KPN7ZBDlLRXQ5mdxvwUtDayVf9dYPsk2buN4rB
	im1d41DPLYlIi1yFI0KX21ek0V7XbGScdILHpwPwYgt4JQG1LrM9L0lVNp2ZASW4whQ
	cdgr3hmuiS3S0m62zD4Ls6bVhLbX8YIvfha5KMOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f526461d6-c7668db6-2d27-4430-9bf0-b0ee9ae239e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2bfea5c2d2504fa802930f1e4aac7399bfe5b595a598b896fcc3937b127c399
Date: Fri, 4 Mar 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646354784
