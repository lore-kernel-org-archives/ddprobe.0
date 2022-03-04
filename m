Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB88A33
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646389585;
	h=To:Subject:From:Message-Id:Date;
	bh=j9geMoLleWKqXLVHfGk97K6cI4N8AMZxnahkxmD3zbY=;
	b=LjR/Z9DSI/TABokKghLELufe/1+UW7zL7WbzCRbkGd2sZteCgfoa1MCVeQG9ti2N
	E8XqGPFGyzjLwWxsS1QBMj+k9g8ire9oiJuLTQ0hu8Kuo8DZgarF2Ot5fWl7/LgagAU
	brv19UWxhvZPjLvW+nEGM2+ZznX4X9UaaitJnpR8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646389585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j9geMoLleWKqXLVHfGk97K6cI4N8AMZxnahkxmD3zbY=;
	b=SxwuBTOqyBy49XzxbpYqaui+X5CGMPaY02Iu21LZA1PMzT0vPvgZaDmOEeEAEDQr
	6IddGWFU6nZvgHv9omemBQocWDTCki6B/ZpiP+Xq4Nj3lxHSPIasg0paboUU9/1I9aN
	VdZyNQQgw6cjzqhOnq49ukEf80uJwtWRFbjzEKIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5477636b-a1cd2727-afaa-4d35-87d6-08050c4e905a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca837860c27c4acdc65c97aba3fa72475cd6968a75b2a59efcfcaca14c1f1463
Date: Fri, 4 Mar 2022 10:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646389584
