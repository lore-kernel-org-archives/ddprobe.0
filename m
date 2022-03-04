Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37167E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646359285;
	h=To:Subject:From:Message-Id:Date;
	bh=7Oeyrd84/oUV4nNpIjWyePKqNryDFrNMM7IyycoZML4=;
	b=IipgIVlC5kY5S5Vnt8PVZeYCpsu6E61YZuH1XOJrlfyH0PTxXFAgCbbWVifzbjDc
	1VcPDMKmKrur7qDR5V1XOavI7w/4dAeLUff72BjSrClxbbUdOgEWUQK7QQj95nkL6tF
	3Au/blVxNaCh1r0l1FVpnGGf8MF2k+kqsuDkKifY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646359285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Oeyrd84/oUV4nNpIjWyePKqNryDFrNMM7IyycoZML4=;
	b=Oi9HoCqwcAr7nvS27iCeeIjX1wrcprVXad7wIYuSdvoVLfCG49P3grWywk7TXaL2
	DkrdbRT5CG6jUMdJhVKO7B+w/t0c0QUPvvTr6pO7ZaCYDuLCErPjRv9CMbWfjyPXfaK
	gNZqNBNFB7jK9vQ4E+KlOQUF2nO4i0vXjjAZBzQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52a90c4f-4dab3ae3-d5c2-46c1-8a83-0b855363a36d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 969ba5f0264cbbdab96d1269f3976f748df22f4abbad991e3abc18ad52062d29
Date: Fri, 4 Mar 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646359284
