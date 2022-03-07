Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F421FBD
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646634985;
	h=To:Subject:From:Message-Id:Date;
	bh=jbjCYjMoBhfXAIyiAq3JGwbLQUxV9qewRxPcoAj/ktk=;
	b=IEzajjSUfS14TFHA9+CTlGRKbpxUFB6WbZ7hAB4ws1OJdgPcGr5WWMgd47KJMKaq
	tFR5dpg1zHvWyTs20VcQOMGS/9un9wHgHx/wwzkkpklAnGD7n2U+VXMETE1TP2rYTUu
	/ctIgEZa9h9HXlfVzK27UoUSNox9IgoUvLpIeuXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646634985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jbjCYjMoBhfXAIyiAq3JGwbLQUxV9qewRxPcoAj/ktk=;
	b=HvT5uM8W8DhjP0z/IeTSBRbLXOvZle9+eHpp1Vfw02/24bGmNhII/BW2FbUbEBSd
	Q2EonMswLRTY41MoKXgDSleJOBXvSVcHOgp7IeAhmxepau1wTGMsSTrXtZ7H+30T4WS
	IPiSVZP/cuoL6FisiWvp46p7F0nR+AxsoWKcYomg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6317e543-d7ffac5a-62da-4f6a-a745-89e0b52d07ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0a35564761cf3ef7d6eb16b9ee932cb1be95a67ee0b3718d5b2083cb28a0f9f
Date: Mon, 7 Mar 2022 06:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646634984
