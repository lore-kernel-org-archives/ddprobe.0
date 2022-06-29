Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83067EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656490612;
	h=To:Subject:From:Message-Id:Date;
	bh=gwL46nkHuywbkCe7DnwhEVjmNiQ2LEjZ0tHL3iLY9+Q=;
	b=Cy+/M51QnkFD7P4Sc/BwGJ7ijFLE2xOOsAsK5iippRXUkMLmgFB4JPmfyLwcxQ3D
	kzyGFZTE+ftqMfGORZZg6LqfA9Uku3wFqmCbVf4/RDRnAjb63N1WY0mwKe+qh20FXk0
	4ke0b/YSASAXYcZepCTwFxoBzg0Iq0tadwgk04b4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656490612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gwL46nkHuywbkCe7DnwhEVjmNiQ2LEjZ0tHL3iLY9+Q=;
	b=EehoVtQgcWGkodpPFEd3lN6GWi18ksffCLZzvh+zbt8Hs/M6pgD+Kd4+juKkWAG2
	vFF4gFIT3Z44Mgu+lm+K4B/8cZadf+0wcB4LEAjZ7MtNo0b2YNVOp0tFBFmn+J0zGJY
	aj+nByJnGiLPgDkDeh4+YnsypmuIK1zw3cqGG8Og=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae88d641-7dac25f5-683f-4891-a2ac-1f022fb6965c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1a5f77fac8270b5f18f620105c667683636c6beaaf6e60416e5805fe24c433a
Date: Wed, 29 Jun 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656490612
