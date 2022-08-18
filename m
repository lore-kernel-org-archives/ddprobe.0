Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FA24A07
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660860652;
	h=To:Subject:From:Message-Id:Date;
	bh=L8QL/y2OOg605vHppr5Gu6zeKPpyVXCLo+tpiog6als=;
	b=VFA3U+CfFtAA4CVw2hHCm51BNHkpaLO++ENGgG+eYtzhq/xDfcD+w9DInpetk05c
	kbGfD2hmF756IpLQuufaCrf9o1rbxCr67Z39zIwsOolIPMI8ocLNz9vQZrRKTcWtqdg
	OAEDvlP2tQmI5wn8ce2UR6/fv6DSklhIPwvKDcSQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660860652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L8QL/y2OOg605vHppr5Gu6zeKPpyVXCLo+tpiog6als=;
	b=X4E7hPfyd/AkwVJO9UW3DiO152OEQCqRXXNsv0NPi4T0j4+SvcO6spqiPrH8OB9V
	XsZlEVdJfDd6o84XkXO9RjeCMClrzDN99uMzAMoGKRY3w6hsgEz0BHHacPRBlU5TqUI
	69YeVN7Xn7QqNTJGmsAVzVavo0gtpDwD3cq0xQJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b3025c0c-a97f2652-fdcb-41dc-a55c-2fda9e034e43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d1bd046118eb3fd7d2f5e29b73280b2d319757c456e7455c770f9f3f0fd44bc
Date: Thu, 18 Aug 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660860652
