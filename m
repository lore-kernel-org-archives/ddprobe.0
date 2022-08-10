Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB7F4A02
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660173652;
	h=To:Subject:From:Message-Id:Date;
	bh=I5ePnUYihwp7yXUW4Sap3Hf3/Egr2WBpvIQNCtqJD00=;
	b=H0oWZkMd7TlF3t/tOk6pAfpcOFkjZ8/udOG82lHE+Zods0/WcAMMN9m0cMhIgAbt
	OL88chYzCqKyMutkMJOP+rISZTin7nMW/mCXx4UnXsEPXK4Zpc1dLM3wIh+mYhTYBrw
	EpSSMXV1KIJmDfof+yAnCSN5JNMYTW3t0ehPQHAY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660173652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I5ePnUYihwp7yXUW4Sap3Hf3/Egr2WBpvIQNCtqJD00=;
	b=gZiQ1mnmxEIUf4wzA90t4M3d8rARHuf/tnf2OHNZ7yNy4xvOXkYph8zGyXQNANxf
	qoCU7IGhqNd+PDpRHWAcd4uyjpcpFDUVp/BT3+Nd2UiX4LVQzedtge3rOkodRTnPnmE
	xHivhK4ey7C4w8anGLUJRo7gGaa2ZsIqhzQqFXj8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828a0f925a-2ef7ccfe-322d-4ed0-bfa7-cec69cdef4cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22edbff94cb7833a6a516d81f3068a815c17b9e393c68bab14d3bc56e0350cf4
Date: Wed, 10 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660173652
