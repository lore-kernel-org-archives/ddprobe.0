Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7019ED2
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647228385;
	h=To:Subject:From:Message-Id:Date;
	bh=O1+EyiA/Hdze5KrX1bxW1ZIMYWpdWyebOZ+AVV7rucM=;
	b=S1qqbU4N4LBYOzf+AOUNJ4xU2ls2E6c1Xqbkx2N1TzsPYnqy92Bv/6QVSt4VM1Do
	fJKSOzoM+/N8G9ObFugUsL8K6FuST3cdNBFtf6ucPSaD3/V3WPYSZ54YcoPWqVo89Wm
	aiz1BULOunxcGtkVT8ehBLUUnub9zUx1JH9CTwuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647228385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O1+EyiA/Hdze5KrX1bxW1ZIMYWpdWyebOZ+AVV7rucM=;
	b=iN3A4b1+8rpTYoGqhQPXsD9/i8H55V4UJC+VBKfkTrWlNYA2zGeSU+lVStFl9/J2
	zyvjb4tNPQMmRL3xjrvBElBmWRL8eQPMoVGeHKc9lwpiMKJ1WUU87uuTv6PMP8/Bplc
	iadqhoqQtb2kSF2crRv2Sbp8S6QL1DWxrOURfe8Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f86767645-f24f71b4-4a52-42c0-a1eb-bb1aa1380360-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f03604110cbdf75fdf9841f072db26b47c581b91f8991c8159661f29105f784f
Date: Mon, 14 Mar 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647228384
