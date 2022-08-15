Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927E71C34
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660576852;
	h=To:Subject:From:Message-Id:Date;
	bh=Jn0NVevcFar6S5XvtTP1PmNphRfoQrQtdLr1d85/KQw=;
	b=g2lmiNzwEWwiKXuO/TAvlZbziYzg16+X7yYCO/xxfNnsiCeHn/LVry33OpoDdK4l
	X0b+HhNTepnsmtnt4cw3BVPtK/XBRII5Jk1osa97aabOooilzHMCa1MATcmo55vAv7Q
	uX5UEZNW7fbTiaoPC5COJI+xGZl729rCbk1kHXEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660576852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jn0NVevcFar6S5XvtTP1PmNphRfoQrQtdLr1d85/KQw=;
	b=RbR0WMQEzq0zSZRRN3CqdvTFpTeSvJfl/uPJONHRBvLcLXzCr8jV5V1wNYad2kP/
	RgDjbMjPSuILQqLh/PHasKspx5UohXFnbwmV95qwureGeRhbhT1QNVkNdOs8ASyEB++
	DEe+5CfbO+Ung8rzr5nfS+Fcg4lF2EjsW3fomA38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a217ea75-f84216ea-a7aa-4511-8c98-dcfe66d10e06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b46c9710ac4de586715969ae2e3ad195150a260e5de7a59d3dfb6c50763285af
Date: Mon, 15 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660576852
