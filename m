Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5BB818
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645628485;
	h=To:Subject:From:Message-Id:Date;
	bh=xvqPF08R0TtrHjiiqBdFNFCaz8wmBZEin3ZtfzDPrKY=;
	b=NE8B7y9GTgsczN6tKJf9tRfJrr77cv3dcYXDFnycPioZTbLjw6NHxKLecmu7052g
	JXo7sC5Ll8mwi5ND2TYD2MbKQdn9aOocUIUUp7KojdGPMIPUet/NJ08D94RsNa7kEoc
	i4n2uwp62nxGGbsNrl/85gSIx03ypndZ/bImjOgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645628485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xvqPF08R0TtrHjiiqBdFNFCaz8wmBZEin3ZtfzDPrKY=;
	b=fm1kcBPo9W1Mi29EfAnNltyCzAqaWDYnV5gw4WRED2g6zhc/bs08TvN6GpCupLxO
	KGYalN+q05E3i/aNmyCrT6oQryb9iIjFmajgOHuw+AxzF7C9gRnuLhlUALIlNWrkeRO
	auf5q5KV3F+XlirZjqqxRjAvR1cQpGJZ1RaqcLFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2719ed4f-653ab961-a2c7-4d99-84c7-06d0622b0ac9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5392edd966350958074fa8751f63fdca91db60a9513daea0184aee20774051cd
Date: Wed, 23 Feb 2022 15:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645628484
