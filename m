Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D131C4C9E
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646021785;
	h=To:Subject:From:Message-Id:Date;
	bh=tBalsxAyIIgBb/Nv+yOEHBaHCVOdtJxpv+hGAHzyQZg=;
	b=ggFuCJv3ZJUYpH4NJSX1orGwVLEiaNsy9LS1bV+/D4zwlETSGMQ3xIROGm2jXt2J
	eo0Fd3efLrXOxAfukQaFMb9O0ux+dWHz8v7mO8m4hCEbEyfXCF019fEBnf9/ApqIQ+4
	RxdAcfmFSigqC+tepQqk4Bf+Z91FUH6SFaaHDpFU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646021785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tBalsxAyIIgBb/Nv+yOEHBaHCVOdtJxpv+hGAHzyQZg=;
	b=QkLT5xXJEoxvB5Ejxe92OcHrDbGa0aakbXagUUQQX1kRaQCEUEZoRnQpX2G6Bxks
	ZzuHNc7wB/tKKKZ5B1lecv3zzUJqGAKaQTYRtifYeWgnzQHJWshJq3+0VW7iKqSUWZ8
	qvJLvJBKCzjXLucUupBTuudAigq8PlHM7DjzA8Vs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3e8b34e4-e5959e86-b4b3-4c20-8082-a6eab6d55bce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d05daa2656eb0e1a0aff7ddbdadebde9f0917aeb322831b5fc22c11c9d1829df
Date: Mon, 28 Feb 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646021784
