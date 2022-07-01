Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D1E1846
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 00:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656634012;
	h=To:Subject:From:Message-Id:Date;
	bh=Z72sPiyZZ2MMWpkZEVGtQB+vMh+9iJhCW+MG7i/C32E=;
	b=Li0Ns0tkZvaMlfq9oDVjG/bjtzQxLOIboqh4t+qY+8QyW5SrN8+7QK8dogEj6ecF
	hv3XuO48wFHutDPKUKIchLHbcIFL0MqpxkNB4vZED8M2Y+v9pCK/gkaP5BhT2vVeu33
	MbSjvGd//fTovsO1dIH/WT+qkCjCCSfoX5CykXfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656634012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z72sPiyZZ2MMWpkZEVGtQB+vMh+9iJhCW+MG7i/C32E=;
	b=a/CC3EB4hM3NuqMWiVwuym0a2R1zY2nNDJzKWODooINzcegqe82Xfky4CZGHzyct
	zGDRpy6mcL+NTgQvdTmD8MLRNexlFXFpax9V2uhSiwrcGs4M7GlDQQb+9sSUODKHDvm
	HgXm+o12CAHGil3EBHh+9GMwsg1fvOByQGArF0yg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b714f26c-f2e9bed2-aee3-4750-bd8a-cd22f4894dee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd07cc037acda2d48152e0ae29ac5f36f0a73f037dfca703c2e5d1b5ab707a93
Date: Fri, 1 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656634012
