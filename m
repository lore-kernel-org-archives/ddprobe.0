Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BCD361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647100884;
	h=To:Subject:From:Message-Id:Date;
	bh=OXFH0OFQm4amWqyBbTSbt1uD461O291deABUIinsbOI=;
	b=IPDiv1sJkCtW5TGg4OOXzVoZXmx40KqMlXydC9h/0fwqdnpq/dSISbidHFS8DDfC
	jcVi6+czyRiXg96Kv2grlKgdtpQocUdAyW474x0hfr/4fzpsqyYSJgTn9n1Xm63DkDW
	XJAioFtqiWDxn1gzHL8UUwzT/fr9jGDjq6bXYi8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647100884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OXFH0OFQm4amWqyBbTSbt1uD461O291deABUIinsbOI=;
	b=DHZOJ2D+Iu7unFBM4T7jzADTvxH3Aakwu/4ISQe+FyoJhpFOkoFT7SGpeyCi5d1Y
	42S8Dzdr4rW4U+up/3+FUGVv1WpFkaqjPwU6ETaamJRlHZkhqIHKNqQd/wedm0CSHq0
	IHO6wkA2oxNbaqL6AP5cuSRDHXsGhADc1DB6FA4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7edcf720-934133ff-306f-4cc6-99ba-a310e0fd6c16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e674d1e7b412eec284bf6be628078e252e852f808a9996ad4df6c1f163f787a
Date: Sat, 12 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647100884
