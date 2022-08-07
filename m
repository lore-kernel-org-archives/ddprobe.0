Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2603C15
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659893452;
	h=To:Subject:From:Message-Id:Date;
	bh=oCCql35ZEfM5XQ1xPTtzcp5Mk2/6CBGpwaCKzomncdM=;
	b=f5ZwpmVb2Vf3KvQ/MGASM4yDooYaYNf5b87FZB5v1LHQf/q33dnQlUammPiqAke9
	TBb83FRujKO+698qOBNAvbCW3ykEeMm+kpDmuo3NST2jqhkvxe1oQj5L2/TFYddRsO5
	1J6DzoqrL4jbLwsmy38Bv5JU37EblVWLnSCiziQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659893452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oCCql35ZEfM5XQ1xPTtzcp5Mk2/6CBGpwaCKzomncdM=;
	b=gSN/Jord9xyMKgJTJ7D6I4dtHOh9gEIwAueSR901xzKiVnXehmYW7JGHqVrjMMY+
	cv7/dz6GceE39hx83Ysa7G0+xNE05GGJ11oocWIfNA6swMzz8hpa1g9h0MOA4LMXLr/
	guS70i9Br5F8PVRBQPyKOWW3LEOUgWtPp356IQNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182795c0efc-0d90b9b1-1e63-4a51-b4d4-da382258ba92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac3219be33a13734e785387a2c365dd5c03e4709df48a7057fc70d8d243c669b
Date: Sun, 7 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659893452
