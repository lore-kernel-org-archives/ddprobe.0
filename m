Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9700117C1
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 03:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653105360;
	h=To:Subject:From:Message-Id:Date;
	bh=KIBxZYrIiuj+fExyJuBiUZ0D6R5T9OovpwTiq4wgE8I=;
	b=Sy81ZPLqCF9rN0lZe+noyoVtt7iPkIPm6B33lUOOR3YwgmybygxtVRvJlxLF2kIs
	bx/41CJE96bN4+v9EcM766Gsc3fwusE9aooz4YmNWzadzQg2bdwPBBVKNuNEbYwLS8e
	rY0o/De39Iw04nxmaBcWnNzMAQ3+NPrHGPrs/OUc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653105360;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KIBxZYrIiuj+fExyJuBiUZ0D6R5T9OovpwTiq4wgE8I=;
	b=K11/Cy99vFTv59Pk0o7cc8RWqYVaPYldwxy0X/9jm9qURD5dNvslKzYkbVTiVEmb
	cK/VlSTaKffGe7kuznbs5TNwDcsY6N6FIs9BIsG77eN2KPAFBdD0IOHy5L6esyCpdfu
	zjZlMDTUU73Vdv9+Bwc75g0OD4LwM7RvHg2YbHnc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e4c1f9b2-8ab5df47-be7d-445a-8783-ec3dd0085f4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3795ffdaec9dac6616eb81cc499b0bab417e02c1dd012dd5a63a681c585921bd
Date: Sat, 21 May 2022 03:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653105359
