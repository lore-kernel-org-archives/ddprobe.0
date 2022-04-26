Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC07B7E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 12:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650977878;
	h=To:Subject:From:Message-Id:Date;
	bh=gDy9b2qifIm8nY7V0UbVAK8NMKb5roczgICJFjl7YHc=;
	b=X6Kwbi4i9hFJaBSZoT6NP9n9w2ae7BxnwvsmMPz2pfwBy7+uMPiXS7GZCQNj1ODJ
	IRDRmRk2vGvdcWi5jYCvELGOeKXHtYy2Dq820Byf6gpOO9ZFJ3lTJjEAK49D5h4n762
	Pd9uPFkWPuxwcLrG3iX2PH9Dg8974YafV81IH6j0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650977878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gDy9b2qifIm8nY7V0UbVAK8NMKb5roczgICJFjl7YHc=;
	b=RCKTkwOD7veh6/BTpS8provR/HiLk6qWM3DAoBOGLAuF4p5S5i8zzdCPunTHv//u
	XmLEVMtbyxddMchGlVbeZyI4PNivswTt53zINDm8oLaU75LWwqbL1eSmM2605cK0lnn
	2PZpel53BjOk4tS/86/PDqA5tPwPix3DZsRe61Bs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018065f330fb-981428fd-25aa-4071-a166-2d446f247774-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa1394a0ce668cefeb27d4853dda27cea53a1a25f36557cfacd194256b8692c5
Date: Tue, 26 Apr 2022 12:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650977878
