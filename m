Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F7D4C7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657915012;
	h=To:Subject:From:Message-Id:Date;
	bh=WxPM+s5O4PGmqxTMZ4cs78GTfXJdVTjo6kC9vIathEQ=;
	b=j2uo6ROFS7AYhWaGKJx4KH4+omxFoAUjK3YO9r3QOSouKgJvdUtzci6bmLbvZGrO
	wceIQoRaL9O9xBcqVQ3nMfIso2MJR8J+7OwDv7xk65VFyX6lCNe8Xhl/u360wIUKZdO
	JmsIi19ELeMK54203VP+A1kP0loOtEt8ReWTed3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657915012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WxPM+s5O4PGmqxTMZ4cs78GTfXJdVTjo6kC9vIathEQ=;
	b=TNftR2ahtO3IsxN7v+a6wJaKzHbj/1C0pGSVLM4J26+USZXqimtK39HZYmeLcWmh
	B8m9xcrGuely9ueLQuChWj+J0DqNGv3G3LVg7oYe91/6BYNTfkNWIqC7O7IW7v9LTxe
	b/YdASpLoHUicpdflGZsITlsVsA38YoPQx6TnPuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182036f74b3-2eba6555-68f9-4927-875a-153f2201001a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe4836bff277172ace0216e368491d9e9c5b0ec719b080b16750cb360f47e542
Date: Fri, 15 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657915012
