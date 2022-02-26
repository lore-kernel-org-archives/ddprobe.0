Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805283B21
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645874184;
	h=To:Subject:From:Message-Id:Date;
	bh=U4IXYRdnwXmHNWmVpff80nM14TZo0rqKKV8rSe1eMP4=;
	b=FYDfiD9iIfix/gjCDM+ss8hU5uJ9hL0asrZbytNxYSQGOIm7Imxv9VrBq+fz55yo
	xNTJkoc8ZDIUWkciKEjgVwFoUsR8TojrUawfsTU1Im5iu84UVk3K242Oahym20IkCIt
	r5pMgePu8WQ5O3DI/CoBvO14nlZeCV/ufqKQn0AA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645874184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U4IXYRdnwXmHNWmVpff80nM14TZo0rqKKV8rSe1eMP4=;
	b=F0vz9q99J7EhNIweebOcRRaQS34GKQ4JprQBF7YyGZ+HjNmr+maeph0Ujv68dodU
	FPM5mqWVC2o3C72INzAdfE6TVS0cerwrNAo8yJtHyAHbY2z3K2sSS2pW+cZeK24WS7j
	dIg1iWE7EzLW+CzMecdsV0UKDA0hdck+C7TEN3kU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35bf0222-7572a98c-e779-45dc-8dea-bb15304ae1ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edd924f5246f36e5098d92aee706b14727e27ae184097e161bb39c9056188d36
Date: Sat, 26 Feb 2022 11:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645874184
