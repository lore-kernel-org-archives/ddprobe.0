Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D62D139F
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 13:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655905439;
	h=To:Subject:From:Message-Id:Date;
	bh=H1G5XG2Yip/rh/31HHh5zch9CQSBhHEzFgpkBpVeL/s=;
	b=jKdWHZZ7Xiss1ICl8GkNEx7akgWfD+dr+w7Oj94rXwCWDCqNlYX3iZ5K0488ErtN
	Z+Oig5eLPx/cIvdmwxgWjisVvGCpJ4S2YQBs4C5hh6Tv7IrKzJ5MB4OWTbc1yjBX9Bt
	UiOIrWU/SLDG6qYzFVBbfrjOzlyZvTlUTGnRL6sA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655905439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H1G5XG2Yip/rh/31HHh5zch9CQSBhHEzFgpkBpVeL/s=;
	b=TlVm73EhpYWBgeiRPzvAEQwrLWm7oeW0yL3B0xgzwGmFOFOY6SsVCzozs53R8av3
	rZETxms6vGL6oDtQD1yqADKnxF3xfWGTFg92FeloJJOdNRj+E3zXQ099yNmaMkagNIf
	PbqSBWPPMdeJ5CbNQbiHQAKNqbjHFIBxK7DQ6goo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818ba7ce45-723f1f56-838d-485c-be4e-2e35a977fc7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1664c5728457520305f785c2c4b17afdc53a2c33fe5dd4d6f784d0951fa72c6
Date: Wed, 22 Jun 2022 13:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655905439
