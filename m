Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7857B4403
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660045852;
	h=To:Subject:From:Message-Id:Date;
	bh=W7WUj28AlTj8F+VuLZF008Lrct2ypEUGQf6EWzGvafM=;
	b=g6anBOEZdrpJNk1QYqPSTBqNPhsmfXMZAE8E82TXP83FuToZcssPk3fgKRV2EFuC
	MiUxIKJzPvGeCb/tCMofYUYy/4FL+5QZwgtUtvp5j9DX1LbJPlrlBWPMR8BvUUjtLrE
	H2WJzLvYKGYbMLdoHKQhyvZySxScsS9pBDzh3ocw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660045852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W7WUj28AlTj8F+VuLZF008Lrct2ypEUGQf6EWzGvafM=;
	b=XOu6bzy0CTd8Ypg8CVBiJaQEkkiG4GIFAcI8DTHlkXZqOeudEvc8o7Bxc7wd1D0I
	H7fxQPV7K6f0PEphtoUe6omqqGLWjDfR1vfLfnUfg8upm9arMdjGewj/MO6xVCZ1juu
	66aq5XeurAafxjEzUQwRsWa20y/xAWnD/9NTfPn0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018282717f72-318a01bd-b656-4ea2-8c08-82654ea3ab68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9570e5316eaa8ec8fac40a5332798a0d3e680eb461eb98d68c587658ebbf016
Date: Tue, 9 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660045852
