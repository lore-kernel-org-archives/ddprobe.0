Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4325D7A
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 03:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644722437;
	h=To:Subject:From:Message-Id:Date;
	bh=oJhwmolo7LRr0dVVdYHKSWeH1EyYwZ4sm6WdWqfqpew=;
	b=D21GxGm7jOlXpVO5TQtykpFrLUiL4TOQrHForZtHwhUXoQJBrI46QRBSmV+NAW6l
	t6X5dfZGXt60jiqXXEcCMMTh0jAiV53/DeZvfBTHgg77PINy6sWAJdb33R26wWR5TzG
	wFOIu8LDf66nAGQ8rL2N8JsimqaatH8/GJKXzqhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644722437;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oJhwmolo7LRr0dVVdYHKSWeH1EyYwZ4sm6WdWqfqpew=;
	b=XFAub/1oj67GQb0DG+Upx+0J/NxgVD80Ft58y43bjKZ27JanJwV8tecPvQ8iQ0dm
	j269ZYQCd4yf5qhs6an3VJ/m5dvCO3MPR5Nk9sKX+mf6X/0jTmTOaGDsJ9AJ7mHZ4oc
	CNeKtssD/8ormUn2WwSPp8C5FHXYYBNagkvvebs8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef118bdad-5690682e-a68b-46ae-bbf2-af176a090227-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7850e784392db2952d16eb9741aca3b48bd109f2a40a91a042c4b12d96189d16
Date: Sun, 13 Feb 2022 03:20:37 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644722437
