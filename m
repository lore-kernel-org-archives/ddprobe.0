Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE005A1F
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646938884;
	h=To:Subject:From:Message-Id:Date;
	bh=uy35LF9SMlFr4+kvr29jHB8SIwASn0FjEi0KiYiMyUI=;
	b=QazTzAm+rR6GEF2hBjXThMy/DibaK7/xFs0v3wtHORgx408HYK2v8avC/TzaUJFC
	+RnSrGIHc0hI1a/dtuklirj8xQUryedRNtz/3xWqPjt5MJUOU6E0EH/ncOGsKbKVSeW
	HGsbmwl5fc4y/dRBYm+TMUZ3Tqy1iHK9TX/5Lfp0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646938884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uy35LF9SMlFr4+kvr29jHB8SIwASn0FjEi0KiYiMyUI=;
	b=EdAOcdkJo4KtJL0OGj5j07e/aMs50MDUBDpvHbsTsALQCnLixAKXxQwMuj6vQe8B
	SSPBGl7rhdaPtGAECAb3BhR4wwygoqL400VTMQqeJgiYI+P5Ob+W6vLIkh/L3fJh09s
	Aq4KgSsW/7a4RU27Rc/xhxJA6wCT6AWobvucV3Og=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75350ac4-451b1801-64de-4ddd-a453-4a59fc544434-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74e88e5aacf24e09bec562e6051b9f908cd70c5feee8a078cfe3783cb597c18f
Date: Thu, 10 Mar 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646938884
