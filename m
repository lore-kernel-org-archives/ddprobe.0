Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6691388
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644924084;
	h=To:Subject:From:Message-Id:Date;
	bh=c0/54l4R5z7QrGnmnHvhdvMN24AUvDY9JQh+WxaefBs=;
	b=Y048HqWpHOuhKYvu2bKpgZnFzwB0jx/RJLqKsxqOAaBXB2DQYP1BrAUeMwxuNh02
	NXBMVk8Iq24HLwYwP11dDyDTAA5oXz9+f4wOJA+Dc8S1926ulirsLe6z1Ug5gjC/14T
	/2hQCNt4UW3Rjv00eieG5RKgjqsqF07qsWB4XCHU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644924084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c0/54l4R5z7QrGnmnHvhdvMN24AUvDY9JQh+WxaefBs=;
	b=MGidg7APjauYCxBb1sAmPDoCHhYJ8Xr6Kvz7UblMuMHxfWagLZCQ78N/zg+oMHwW
	q0CGcFHER4h7HiivZqMjVmuABECfVJNgyxDJgJe3F/q15SDhmiAyXvDMCmX+Ynq5DkS
	VLfUE9y+0t22E/cGnWqpInXr+12LvO5liNdRCW+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd1da219-18a39593-8b36-4c73-ba50-8635bef20452-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c20610d09726120ef046a6551ffbf75a3747d5726bcb491637a82902c5851be
Date: Tue, 15 Feb 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644924084
