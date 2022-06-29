Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549777A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656529012;
	h=To:Subject:From:Message-Id:Date;
	bh=GuEDd0HHPkh9STV0HpXEDcZA/3M25Yl1axDMzBBxqqo=;
	b=d89IcvaZxwG9sBYjo1Lwz9oaE8klZULeEJgFArOdZIwRzbX3Vdy6q82tI3SgAfi/
	rm1Sk5Slq7ZxUjQ/XjdVV8Km3ejvqZ4TRj/NJDyzXuflaVGftWjxidTPw7lajaqLpAy
	uyf8I4EuhHvXO9LID+/xcbzNHy26w+6R6TUvKm/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656529012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GuEDd0HHPkh9STV0HpXEDcZA/3M25Yl1axDMzBBxqqo=;
	b=bVETlYaq9rtE6Zrx3bUU2kNuOzW8MNRYyGFk6ov4WugoweeAd2sPc9e7Yqxrx/VI
	kVlSL1LSgIaCajc7wbE3WLb4EfHOutj/1XR28R74Vpjx/1tECfSg3OrDtuTalgxQQ2a
	web88AZKq1Pwf+RsVjP7V+i41kWWdEnXQFGDnLL4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b0d2c63f-86f80a54-f605-48ff-9c2a-96d19117e1e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e534f3734cf33dc924ac5808da3e428323f7e62680b789c1be9110451ddd6d4
Date: Wed, 29 Jun 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656529012
