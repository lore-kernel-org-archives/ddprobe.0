Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1237F
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 08:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651998778;
	h=To:Subject:From:Message-Id:Date;
	bh=nDFzOX3qO/v6kaZOASpopBUznCanXy4Or4iSsT9fW9U=;
	b=Ygs4nfHB1As7hywav6F/94T6Scje1JY18f7No9RflZwzaY05M3f1JrsZx4fjy93i
	+l3Veg5tMufZyH0wwOLwA5U/Yw2TRTP6kTHfizUE9MER6s+zbTipBrm+GZrGjffqwrm
	v21gZ1LVPWXnf3xnqjm+ist0i3TT9p8ZI29S79qo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651998778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nDFzOX3qO/v6kaZOASpopBUznCanXy4Or4iSsT9fW9U=;
	b=XQYEjkqu/FxhbwFAzW5TzexIWjzIbml1x2xAPuKURomMDAkcZIIRPnjrCU+6B0kr
	Q2cxX6YTMdPWGvnMQ5QsgJhA8LqkFz/b8Je7m+X3iD24MdDvg34p0vn5mOEhY2kyL0W
	xgqWz2PFnud6mBLkuY/ObVNAgi1lPMha8s7mbyEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a2cce3cd-22cb6b1a-eaa1-4215-8aa8-3ea7fdbc7ccd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d799e2e39b54f44119d83200bd46c5b1c099d1272c036482c996339feb00d010
Date: Sun, 8 May 2022 08:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651998778
