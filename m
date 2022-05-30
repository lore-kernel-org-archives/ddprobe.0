Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA4515AB
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 03:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653880739;
	h=To:Subject:From:Message-Id:Date;
	bh=zly+CWs2nmooIvka+3U/cnSusCMi/DJrhxoULZNEzb0=;
	b=ev8/Dh57MpMgECbcmYsCWSMXweSW6QdnIiMjceYVXeWvW27va69N8ODMp8zDUDMu
	ynRO9WBn5f+0ft8ZmxwpdCFdUqBR+kcszfpEatES02A99J8a+g2ewMlaui0OIp+FC8U
	obfWLenut9Mf3aM5l7RqWT+DhgZYBUcv5+1QurVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653880739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zly+CWs2nmooIvka+3U/cnSusCMi/DJrhxoULZNEzb0=;
	b=iP0TwJ1wXWhLG/H+KjyIxN0w29HR7tMPPkhHxLBmuWA//L6zryw63SucHHBH+ogG
	6ZIo8yl++dg/GvonwerfOgpCKETBUWgs47o1NdjXtseoyvHp8fd84i//o/T3UKilCPu
	NLnFrcge3lUOrSPZslfI2epilw18xBKGtplvcRVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018112f955d6-a635e790-cf29-4144-a8cc-f3dd6a7daf1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f42a06fc410ef27256717730cf77779cc4af6b26d724b60e8af3a0f6c0bb7a0
Date: Mon, 30 May 2022 03:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653880739
