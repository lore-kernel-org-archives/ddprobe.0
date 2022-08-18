Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E9623C8
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660807253;
	h=To:Subject:From:Message-Id:Date;
	bh=0qU0odBi1i3rTqkEQkD5VpatBRIa4OFH30sDc3MWU/A=;
	b=MY6tGAzti/rpT0GJgDihRzOULLkysq9G8kqoVFXVziZOmgHOvU5uXSCwBZWdsR01
	tnOpg0acQ3uRWSC7eho87tUCGt9KaxSSjHR5y+7kCYBOcZEKniWBgHvilfFJEh7MgmO
	gxB2tDHIPDjN5G2iBJnpDXKSvWKtmGHooFzZAkE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660807253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0qU0odBi1i3rTqkEQkD5VpatBRIa4OFH30sDc3MWU/A=;
	b=HOLyvwOaXkT6eEDmvK9L0LP92WnKws/wnm4KDLja+lCvWiiz9bwKwiCJEV9FJMTm
	jkMCAL7Lv1dheyE8KwKvcqA9qUdcGkNHqNxJUdcvKlwfE2KDd2o/6+1E61VyCj+PJDn
	XLaO7Fu3xyt8hKxmyyWrfiyFavhNjyTeQmKgTklA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182afd38a6e-243ebf4d-9cc8-465c-9c91-c9033e7c471e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42459a5b82ac97bcad51b719b89130c7aeeeb2e22f8d7228277fd99d4db5b353
Date: Thu, 18 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660807252
