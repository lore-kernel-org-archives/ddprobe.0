Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EFA369
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661136052;
	h=To:Subject:From:Message-Id:Date;
	bh=niWDpLeGLaCIFr9QoXe1q3dePdbASR3ekZUEhFYsYQA=;
	b=WUEX3IoraxaknQYvaRURrzeMQ07DJdWlruQ6XgQ3P7VcdqGPYI5JMNyOtdFtP5xN
	L3zi8QU6F/tZvYXBqAgOYQ/cq22P6msu9MG48XOLudsdeg6tK6JaMlk6SHXPlEA5Rcr
	+nI8t+XXiihhpkQmLHHgLsXSUu81NGUu2hZfSJf4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661136052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=niWDpLeGLaCIFr9QoXe1q3dePdbASR3ekZUEhFYsYQA=;
	b=RWtyvIPgY7GFVnWfdQTHScsdNME3Fr3D6FGcN1xZblsBd59Z/6orRCMUY3DdlL7i
	enLl+Vr/R+4ZcJR4wsDPM8hgaw7EhTmZWlka6tY6yCFGmLkv80GHedwE8VUCbyHAyik
	AH/sxlNyI+Z9Q8XcgCm+uAa+oQQCRRj9qeDLGG7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c36ca12b-c4577e67-a495-462a-add4-edf4dd723e31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 707870869075355c0f5db3fb0590cc7f068fbba4087294c3af109a0f2befb521
Date: Mon, 22 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661136052
