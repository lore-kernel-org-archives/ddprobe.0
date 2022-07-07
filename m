Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364D16674
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657202212;
	h=To:Subject:From:Message-Id:Date;
	bh=dd8JBiwfCHoqlklOdgRKDRCef1jVOHOffo0dyDS2zUA=;
	b=KJh0GuUWFu+WCKTOkC9QEy0HyFpSnp19d/SRI1B+sD5ZZI0BbBsnbyAvCgi7YhKC
	uiSVw0cETgu+MLp+Xwchsarr8kWERnwxhhqOKoW/7FLYwRQJeDbx5jjHcL0mQk/zJ15
	PFFZZTVgKpyieIdgZbwYovKXGuLW38oxnn2gd/uo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657202212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dd8JBiwfCHoqlklOdgRKDRCef1jVOHOffo0dyDS2zUA=;
	b=CKlUoZr3e+j2un1QLNkswBjvmZDZJoyd5uTbx2Z0eyN7p7jvK5+wMHecXY1OHLZl
	BToXAOYTc+OChiYIAa3uoax3g1EgVNPLQIVmXuUX3aLA9mIvhl51idffyQsbgIQOuqS
	CM9JmAxKlo0gD3xF0SIzTStUFuFPWQ7ZGcl3PL1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d8f2fdee-e52a5ef9-4ea5-4d69-83b6-4748a103a2e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68be682c6d0def31d47e4d4741d0d1c1de09219175feb286d905e6499eaadbec
Date: Thu, 7 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657202212
