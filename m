Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1917C7B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 05:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650951598;
	h=To:Subject:From:Message-Id:Date;
	bh=bDqXpYgGTfUOQXvqaicr9NuDmuocTgZWAwXoZ24SVFA=;
	b=mkNMl9y8Bxm35D0jSv0swE4u36HQYfOkkzvcJdtTq8h63lMXtaTFWbHjYlNGbHzm
	vY6DAkm9nOdREW9P203p8yL0xamhpxRuYakbjEudkBMjtKu/Ml45kWMzIGu1ZjSpZme
	8RfPmwlmpWMbPMe2bAVpX+wfC9kSDHxsRst4C5EE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650951598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bDqXpYgGTfUOQXvqaicr9NuDmuocTgZWAwXoZ24SVFA=;
	b=C/Zpj6oyJ/xC/ECY9W3s8+zcZ06XlgN7AE+zc+ZGEhTyJp9v3jRllU7N8vT7TVCw
	2maKtuZ/jgRxPJp+DAyDvaKSJTW53URQNa6j61LG+nnivtc7osRKHZA2A1DQUzMP+Qv
	x2vkgmtmlD+0zNr45Rj/HjQTQ2VxoNBQW3PDaoiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180646230a1-4883d155-a022-41a6-b0b5-ff419c2299b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01e7d8f323727424fa4768fb154726c3766e9d112e27866af9a6167a84bf0a8f
Date: Tue, 26 Apr 2022 05:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650951598
