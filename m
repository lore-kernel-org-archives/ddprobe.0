Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7AA139D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645693584;
	h=To:Subject:From:Message-Id:Date;
	bh=xSMC8GNUSaaYVElNaFdW2qYCsuq1PL1txJogL/K0Qw8=;
	b=eclfPvgb0cHNX/VrW9Ob0uGFXgYMGHgEAzMwOcm0G52vK40P25P34DBKkEouynp2
	0LAxwC0BU0cLqd7TzEYZfkeRz1YL7XrfYHDoSsGy4OJnBqrDVlsSQkHU0FK2p7hhDLf
	R8qFz1M+r1StUDlPbLfw5TWoRvwCyDspaQqQhGto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645693584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xSMC8GNUSaaYVElNaFdW2qYCsuq1PL1txJogL/K0Qw8=;
	b=e0IC65uMFkMG/WufpusW/dDwGkoRdvBoqU43pnrbNCUThLTsAtP+2QOTO/v9fhkZ
	GAKDIj9HJiV8APzev2U666YzLRXO+bseiT5b0V1RiTm4YsYreoOXPJWdOoP1LahQg/i
	NC6FKOspSnuNFtyySxd9vkCAV00bY4psKHSlbw68=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2afb458b-0902bd0d-856d-4ef5-81ab-cf625e74fc7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c09e606c8d1bf85521749556296a12201c06e53df08a417ee253a51aa0ed23d
Date: Thu, 24 Feb 2022 09:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645693584
