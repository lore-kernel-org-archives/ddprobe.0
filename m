Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2BEA10E8
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 06:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656656812;
	h=To:Subject:From:Message-Id:Date;
	bh=86e1SEnYLKgleFt6chBERp7CSQHiJ5CA6VI6PYirxR4=;
	b=Tdxd7fRWamW0/DuK11iH8ednXSik5nT6Pmj/f6qxTd2xpDPjyv3t2ndK749QgiZu
	aEkHhenYq9BvH0wujFtqCAGi3XEdguYRJm4OuOH8x4z24J+QjyBAi6ZEKZjbKiPDtwq
	+MQReH94jcgoMeTLAh7E65E4CVLJvynKfZo9ENw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656656812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=86e1SEnYLKgleFt6chBERp7CSQHiJ5CA6VI6PYirxR4=;
	b=BLGpnZGaIgHH/ei4agoKUZPyUUYnnrwKWmoxKdgbW1sZsKa6gXS12TMXSSECuqsV
	phQcc1MoziKsot91iraCKBm6+v+b4loiHHD6+bSDh7k4xkz+qA3VKub34/bRKERui9b
	noNN3WPa5Q5C2VOQqN7oTUXo56ExQoicl+sZw/Wo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b870d907-91c869fa-27e0-42a3-be27-21fa9a37c403-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b7e42fb93d2ea3474d365d1d3eb05da4be1940c80a736b9e045c47dc385e856
Date: Fri, 1 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656656812
