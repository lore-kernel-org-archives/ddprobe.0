Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6F22573
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660501252;
	h=To:Subject:From:Message-Id:Date;
	bh=1RU68u1HZ/r3pow95uzanq0cDGTcR1OihlIf7HizHMs=;
	b=LzRTZwJSpUgEaKN2fCQw/xSYTIzSR0JVjuMqphKa3bTnX6P9aYQN/tzhjjc0pDMC
	rVxIKp0PB15Srpu9suBP8h16y5ZSg+KVqVg1NXKTWDvprCwge5E1O8M9OFsBj5VrVJQ
	foUbQvQGvRz3Md+2pC6kNSHsWeo8cDDYeoE54aNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660501252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1RU68u1HZ/r3pow95uzanq0cDGTcR1OihlIf7HizHMs=;
	b=aFtyUtDXLafhrMMVYrpGntB3Toz/etPsFGQ6NvpietzzEd9nSnzAaZq+GHE6xgjt
	NU/xIY+DH+J72/4p7Rkonz2Vq3cn5yYPtT6FS158WGwxx8u+Rh/yC5H2seKMIC94ozU
	Ou+08cI9FaBHvHNZkgj6nKNyJmD8R0i/aaOElsbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829d965a48-be8f4c8b-a8ab-4561-8d09-b06d054aef5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ca7c69b7f705c4d78711b46b445ba6af44d9bd7f63a125e0a917e06ab136404
Date: Sun, 14 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660501252
