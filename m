Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD3E7B
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645427785;
	h=To:Subject:From:Message-Id:Date;
	bh=ke37VeM8XFafqu+ggyCA6nqTZKECCmgFGGYedyLZak8=;
	b=RtPresqyxc+c5kUe500nrHXq130QLUVzZxjUhNe8Elm/FPqygo2JWQP2JasKkDZV
	+RWAjoyF/als8lWR1wRQNIR54c46+G3R1cv8HVfSrdR0Q50l8ecxorC898ohOeWPNNa
	GE+Tgdq5bd3lP9pGMdZ+O0+uVWiyKZQMeDxKac9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645427785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ke37VeM8XFafqu+ggyCA6nqTZKECCmgFGGYedyLZak8=;
	b=igG9zk0/OcE0kNIfJ3H5cuFb8PBMsrLSSrxSvrc/zd4AaZeKRCkqLPt1ou3PvxLY
	Y3DxM+VPUyZVrOyem8RjMWMfRWo7+pNpsM8omJ9isx67T86nN3tMIa22Uy7kcRKG150
	kUrxttd2IV+sUWBFSdaiL/Ee0mVAB8dkRFmrgIbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1b237c30-36031408-19ef-4e46-93f4-45cfa257563d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 749e97cc56a9054f94330fa20a1faf07043da4481501695472449eda9f1e2dfd
Date: Mon, 21 Feb 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645427784
