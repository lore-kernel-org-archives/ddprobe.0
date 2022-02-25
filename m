Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CFA10EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645762884;
	h=To:Subject:From:Message-Id:Date;
	bh=4kgjbt626nBDSzKXkd0V3g6AVS7usuGUj6Lyne5H6Tk=;
	b=eQuSf5hwYhyMDaS+ref1AhZluoZ2lId9p3sejHjDngiWEtmNQUfCgcCITMR0ElWs
	8VRCM5X30HXhbWGP+ldEJ6vmawKBAPvdwD4OBg4OUl9NYUxlFNoRwraho5t5t0e9dZw
	CExl2Rfj7Q7hrSaWNkvIeO9PrlQgp8ED6gc44dhs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645762884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4kgjbt626nBDSzKXkd0V3g6AVS7usuGUj6Lyne5H6Tk=;
	b=jIlg5VqitYLet5kNtrWdyG7Xb6TFM11mCIBmtdMsozbM8tYL8JKq87NOw1WkbRT/
	O0ymVSrM72mYWB+7KULPAXUj0peNPf7JEQemNyYKtR7n7WNjD+LxZyb/274n2rg7ZDn
	gQ1JSKeiy8CGEnJGS7BuCQIGw3hYSQa3xg0oCi+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2f1cb4a6-ee30ae09-91b3-4672-9508-129ec7cdb645-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e1b3508d99ddc7fdf731c0ea9e51a78d7d69800820cb4d0e7f66b718a217476
Date: Fri, 25 Feb 2022 04:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645762884
