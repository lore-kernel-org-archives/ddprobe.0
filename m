Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19E1362
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661164253;
	h=To:Subject:From:Message-Id:Date;
	bh=J0cp84gwM2o2HSs8dj656u4R6ZsT5ifEAb4rD6mqXiA=;
	b=BYIsOin4oo/smHIOUb4oWKpn8eVBkK+NCoEqFkP28UnikJfsZnK+ofIlp1+1F3pv
	19QnnNNSA+B+qcuaPIXkTrP1ZafOTG2x6xObG6VIux3zAER65SGr2UHUHvWkkwIi2+t
	y8SV7CFepYLrE1oF5c/AVlJWfHjkUzEP3oDrtwwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661164253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J0cp84gwM2o2HSs8dj656u4R6ZsT5ifEAb4rD6mqXiA=;
	b=jLCaqGIQa1taPfO38ChfNUayVZj2FWxEJYiHCdN2D4gGzEQYm8l3b3XwnVH+O3Jp
	YZireI6buKIHJOMtsmy6WjmWcLwUgZE01yCzkDgis2lZuh3WOlqHrvjNq5KlE4/gEk3
	IMsh2NaMKrSFtoNM78ablW/6dKrcHr8y2RWDChgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c51aedb8-7efd5edf-1506-43d2-9e23-dc708668a5c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed3308afb947ba5931227d77e9ad9bf588bde111d87c27ddb767c98543157d5e
Date: Mon, 22 Aug 2022 10:30:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661164252
