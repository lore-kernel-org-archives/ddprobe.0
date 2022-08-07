Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 891907C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659907252;
	h=To:Subject:From:Message-Id:Date;
	bh=ruDS6WKkB7hEFIsfrNoqkgbNhR4vQqMBcKcCwMc0UC4=;
	b=HHcBcJGS3tX/EpvECjcnhJZS/ZKt+qi7n6bQMPMz2EGals26nZxyZYgLPh24A/5A
	sd2HhhPysNj5ZH0gVNaXKXNz21jSKcFpy3a+tDhnxrk/qdXWAtalQGkzffBhN9z8jkQ
	XHEgGnRr9o1QbHO9/h0Z98N7EK3oSubbEadd/ZbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659907252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ruDS6WKkB7hEFIsfrNoqkgbNhR4vQqMBcKcCwMc0UC4=;
	b=dxRt6Zb9xMajOCKWrNDF1N33ur6hADroaVsrQi12WKH9199X1Dn0bIlp7/WhlvZo
	sadhxxgLOk+BC9VXMfW/YySH5/PFXapI4y4xL25Ls/5JT8rO9k1QjjgVITO95fU1Kh7
	xikv/HQ2jC/HxrVm1QeiPAY7g9OqIiUtd7/M4aHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827a2ea163-79f4e8e0-ae3e-485a-95ff-91280bf59d0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26e6c64a3718db1e1daf04aca6fa0bb0837100b4c18c8a4ab222a4dfae301d36
Date: Sun, 7 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659907252
