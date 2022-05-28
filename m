Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE25233C4
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 22:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653775619;
	h=To:Subject:From:Message-Id:Date;
	bh=vRCpY37QKSXHi+rDdO4lNsRbGkDq15it+ze4a1WUMT4=;
	b=NFPmFCmpsE5DDX3U4JEv4jDfxc1qNAZ7QzmmC11m7IQtCNov8iZI4uCb0WcaV4wx
	q8Fy4xi8Dy81IB29S1JqUZVC3Y2Z2kMJnIvtV84fSEfnS8QHIP6PvByKq9Ej2XH7Yxu
	j624UAOloko/rM3ih3loV4ptwALExWwM6rrjgwP0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653775619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vRCpY37QKSXHi+rDdO4lNsRbGkDq15it+ze4a1WUMT4=;
	b=B3w2YCaE7HQtw19qCG9udRTAtc8j0Cnvsr9ktHb8iH7iKGtHp1uIGWP13BsxB/1v
	u4zQs+NBXyCaNMwrrdN93GPa/fGTEvH+h2c6KMzfDHGd/czeoanJ/rSgMlxmCCAFSf/
	q8hjyXPZRrvv2hO7YDJ1AvLugRz5dB3g384mZBN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810cb554e2-d000a1fd-a19e-4cde-83af-0dd7e64c4bc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24b4e255bf7b3123399ef1cf89d194f34f073833110ab3975425c4ae12fb2576
Date: Sat, 28 May 2022 22:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653775619
