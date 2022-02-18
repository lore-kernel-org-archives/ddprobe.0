Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2327A4C74
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645212985;
	h=To:Subject:From:Message-Id:Date;
	bh=aTLebgaAU+x9MCbjH0proAfLu/Vs7lk0Lqg3c00UzSo=;
	b=LkOFPiTXWmjZqKzBdGpJrC83QKPFNOA8Nm2NxTEZAKjwTv3/SHtrgN00V6LdiFui
	Gj+gu3VVwHn0LIDHu6Rq7UlSTkiXWy8BiY3SB6Pt9IgH1QzR1wxyh/ANnsMgqFjXz9p
	ei13/ZtcIO2W93vgURxUt9ln7diXIrQ0xOzCcwOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645212985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aTLebgaAU+x9MCbjH0proAfLu/Vs7lk0Lqg3c00UzSo=;
	b=B4A6j9JDvN4kBPs5IzXZeGUPF5vnu3RaVBbAsAyr5Uf1wYE+AL+n3AayswXxK98D
	NhjiRP4Rjc2gguJzlZfq8OiUOnultuM4SPwuE4FKg0zYdAu7ldJy/gKgrhaLkYIkZza
	JLi05XeWmbAqIVigohfpiy4OnS3hNzbFS3+aF6z0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e55e5eb-99dd1fb7-c8d7-48af-8407-2722bd1b0fa7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca9f8149ff8ec0847f27b7bf0a5be470afdef419feb1f552fe11313e31b09458
Date: Fri, 18 Feb 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645212984
