Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9367AA3C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659683452;
	h=To:Subject:From:Message-Id:Date;
	bh=+AKLte7BKlLlzKuvJfO7KP31V+qX1TbGATbYCt0Cftw=;
	b=HzL7VXaJNAVuv7x1TV+0bfONHPnwVXc61XFTxSDuN1YShPWvioEDGWz7IlgRBeI5
	3QHTrc+RbrNy7DT2mHhGVEzy9rchdpNMH6hLPF17k5e8ltizEyQUHjfT32M0uP20d5v
	fHgBSD7QSsQt9hV6kSeXafQb/aDII3SDDAgQifK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659683452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+AKLte7BKlLlzKuvJfO7KP31V+qX1TbGATbYCt0Cftw=;
	b=aShquHYbGpn4hjGR7E0hBhq0tOnVmZxQwpPXWkvBhW3rDByCzOn62KFg3o+ZNejv
	MnKpMga6QGOxbrMd/i0EF85ov7l58QYzUu5z5lQ++ZxiaD+Ak1rBR5Ay0hi8kmHFDjr
	62QrWKbBcT8QOo4YEzP9TQ0oaxhFCz1TClVueBFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826cd7b66d-a4f7a106-5e03-4ed1-afd3-9857e237b5cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9e73b4746164519093ff5b05eef046e69b96ce08acd9733be756e733bf4d1d4
Date: Fri, 5 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659683452
