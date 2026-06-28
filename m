Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4443040D598
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782632914; cv=none; b=FD4RkhFhLBzTwLx/FB1aURwlJSY8Qe6NlP/kMWjN6lf/jtwXe+DnzGMCB3EXNEmL5YObolHx+NUBQlbWFTjnNNDfbdvDuHNzjnpKRCOgjpEiF7GzKoTeoALI7lAwhuHIR8u+Ur2RCNTKTFi2PNdJkrOdTmRaGWpK1Ye9+G6H2AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782632914; c=relaxed/simple;
	bh=4mJHUm4eMzWywo2yHQPrqNYsx31M5vYucSG6YivBnx4=;
	h=To:Subject:From:Message-Id:Date; b=K/cyL15o1CdlTdLKT5VHCasYM64QUI7VeheijbvzjF8N60NsF+XfSMiOHQ2W/pK/63yytTSE6EqOLktZOHmfIC4H2tWnH92oFPYNr4C4jGFn2JoUsiW3RhGPZhJGAGUkUNhFr+mDcFnxlNuZnqH+mSWVZtcqOt9Wo85R497Tfu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVZz5AmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVZz5AmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD566C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782632913;
	bh=4mJHUm4eMzWywo2yHQPrqNYsx31M5vYucSG6YivBnx4=;
	h=To:Subject:From:Date:From;
	b=QVZz5AmT+Mwo3aTNz1MWHo8EQYRgSeGo3wYCH+EuD0EDBhXSSmJ5bBueJ/MQINhcN
	 NEFQ3XYsJSbxi3RK95iqXPmu6VnAdx0ngL6UTI8uhSrNBzMLyl798EpEg6/zpJLC4C
	 UqG84ILM5PRW/umlmNAvvuWctvJXMRun8H7XE2I2CtE+QtMxYS6P5WiblnOkwH296w
	 tZvDC8Qt86XH6JiMVg1oXUoOneYmjmaGkPilnKzfWDMP5DHd/GCZ9HTw236jqV6gxF
	 HcWPOO5mtuvAwBswISv50BP4I088w5uWH60lvIQ/VqHq0SvTbH2n2mGVxhIeaxtWqy
	 2LR5CC7B7MQYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2312C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263291372.21452.7287730718956268400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3f53036e30d655451f2c185bf7ef549d890d5d25b814220f0c956365664bdd
Date: Sun, 28 Jun 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782632913
