Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153714405
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658315812;
	h=To:Subject:From:Message-Id:Date;
	bh=N5bf2u+nmMke3Xkt8CxZCskrHu2mWHCFMHtBvSdzmyk=;
	b=Xf1U0O9J1Hwj+hucTUWcsJ8BLgM6VGP7GdTiw7UajyKkNlThKY7+pPDjz16CPfKM
	/xgUakseIHamHO1doqsnp+MGtLzrPJVGVB0Ja41Smyc/ULIUEXkWuVjaTlGAHldXjMF
	GuYaX/E6rPN9Leke7irhAN7N985YT6Kdmju5bKf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658315812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N5bf2u+nmMke3Xkt8CxZCskrHu2mWHCFMHtBvSdzmyk=;
	b=Bjgj79Pk4qHRgdVlHDQvI/cviV0NOm+s7DYIbPJqAa28jgU7MIaK9qXRcC5Y/q9T
	XPskYty5r7GOzcDKcFYybDDtih6DvbEKHtkb+KJLb2KAaMqbxro7o1zLFH72hz0JEGS
	GyzNUIAnc+PFwm1/qGmtAbeLVW7StZ1+UDarAMWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b532d8e-53349bc6-7f14-4a21-9ba3-432691f7eddb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b2051353ab33501802202da736c252492378e8064a793a471458f47bb468c17
Date: Wed, 20 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658315812
