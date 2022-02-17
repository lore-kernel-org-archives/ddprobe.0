Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8AB24602
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 19:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645127485;
	h=To:Subject:From:Message-Id:Date;
	bh=XHzVq01KvFPzCpH+wRzOZqRNqte8IL6tJCfoXz2e7WY=;
	b=Eap9ciPM0WKS8XXJwCopCyQRUPx3X5+OGg+8qaDtk8WUQg5P0ldxVtZspTU5vYKt
	x/lXInVy3mEfYo34Vw1IO/vULwL8iiJMfw07MjLPtp7q2VJFc/lRUIyW/ZYzFcV3anG
	XqUBTbqkbqeL/ySTow1hv6MdDay5HyiVsDP+oHoY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645127485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XHzVq01KvFPzCpH+wRzOZqRNqte8IL6tJCfoXz2e7WY=;
	b=NSGT0CDllRRdWEhdT4Wf2JUjjjY+izpjBHGA2QaqAetDBL5YKz7/AVOuiTyax96K
	jCyQYEg2qK7cKknY+sh/wdk009QTginiQYAynFgFCrFVq+uMhQw2LtH/mQK/lFM6l93
	T9QFBJVI8w/bmhoWqHp7Q2HwcrMGWY7W+ka0H/lc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f093d4578-85e20ff7-5dcf-4860-b1a0-1adb63201ced-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f52e12f5e3af79e4ef78884ed28d5eea202b8432ce49b4689046ca8db308f482
Date: Thu, 17 Feb 2022 19:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645127484
