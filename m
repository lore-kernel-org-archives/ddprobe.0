Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFA0185D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645703484;
	h=To:Subject:From:Message-Id:Date;
	bh=hY8gBUsjcqxs5a5lYeAH+dRoaMkH7zDfIUwdNn8Lxns=;
	b=krLYFa3RBrNQNh3CD0eOvQxBoMXQZh63vF2QemXwJ/JxRt1Vze3BfAAJotd4rKXf
	rRgUZu3oPoWrMxQYUzhqEN2Y2RZWfUlUMKhmG2b3C2GHoQc5Q1TJK7G3opN9qaiC7cR
	ip5PIas/H8mg2pChe9/DwILtLLm2SxNAkuM5pdhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645703484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hY8gBUsjcqxs5a5lYeAH+dRoaMkH7zDfIUwdNn8Lxns=;
	b=Gi+QP03uENA/4W+JoyysDtfPHRnRq+bddDsUf+cac5mxmBuMwRnChUjtjVc+5Dib
	lVaAojfU5GukmsP5e+MhbJFVThRc/9mFS5Pic86bqSnAJC7uRUBblS4uC10HPNXpuLK
	vTkJPv/hWu3D4ZHBlZppp/wiD+wlMkQWinPc9HMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2b925570-19d35b3d-1864-4559-8ab8-cfe744c4bdee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc02a53567d63487cedd1236930ce2a668db9c5f542ec70a32d05698f3f113ca
Date: Thu, 24 Feb 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645703484
