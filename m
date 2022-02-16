Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 981F67C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645010485;
	h=To:Subject:From:Message-Id:Date;
	bh=c9T5W8FNqc+GcVU8fGw1MQKjZMb9AINAfi+ze7NO2TE=;
	b=Kbc5e2RTmgjKAG9mZTc6pe/AvmVO6hbEm/wkPWhzb739PM21ITh2gmx4cdsD5kMk
	/YDhvhkyqoLVtn/QdaFlXjYyMRF491tM1roaEUteDfprdIE5eh7jki9e3kRy+FAECAA
	Fshoi2WOoFL79bl5azsvNwBSX2w5z8wfDu9aE/fA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645010485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c9T5W8FNqc+GcVU8fGw1MQKjZMb9AINAfi+ze7NO2TE=;
	b=jM4YbcE0wlpZ4ar0PF6+NiKPEsSEuinUe7uLLNr/8ya/ZMrJlFYrDhe6FxyK/93A
	5VoLRlzyAJ2nP0HW0rgxq7FLbVYf48x6Uh5AV4H0d16TmHDkh10K5sxORJq/oujEdRV
	nqJm17a4NZ9u0Y1JveuJw+nttJaxSIttrnXwaxEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0243fe4b-3bcd75f9-5c06-47d3-87fe-3b9dee17935c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bac5fce3fc7db9367e10f2c65215ae918579d4d277ba39817bc5d0671e129cbd
Date: Wed, 16 Feb 2022 11:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645010484
