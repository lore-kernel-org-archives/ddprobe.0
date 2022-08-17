Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1F853B8
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660758052;
	h=To:Subject:From:Message-Id:Date;
	bh=7OAMdjd7Evgiz6kmraGcTnhelMungxsmGuq1iWqiawU=;
	b=ZKdt3LsczjOvgwDtLqTDdbOu8wNN6zG+jzL+kZcPYZv7iepqc7Me4GPsFO4CBFB4
	KzkODW+shC/ClXzIIEwEsYFbPEMCI0XcEMCtU6ecYzNNouF/UGB9qCa4DzG12Py3wM1
	lWBbO5yUODLfPwv23EFBokOwKv6qoFT04xqzjxUI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660758052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7OAMdjd7Evgiz6kmraGcTnhelMungxsmGuq1iWqiawU=;
	b=DewaAtyz8SpexyQkAw7YXK6jQmvzSWKn51v8QR9Gv4HpQq+u7p+nc4VYUTTO1Szm
	7OOeyO8uGaDE5vPRe0KVCzEarTTsK5J7pQooATyyxWmWv+gt6csJBd/J/C90YGzuRwD
	o45wgK1VlkiFTVW/IzztpD/XcIiIucgdDfyOnIqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ace4cee8-234a6faf-a78e-4184-a6cc-dbd955de3313-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81a5805399a638c5db465f448982908ea86ff31015cd7f74100674120792ed3c
Date: Wed, 17 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660758052
