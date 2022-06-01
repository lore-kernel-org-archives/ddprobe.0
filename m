Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EC82562
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 11:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654082759;
	h=To:Subject:From:Message-Id:Date;
	bh=+RWW0F5W0pgaR2OvdPlVEZas6TPLY9BImPvbECveSJ0=;
	b=La3ToYGt6t4s99bD/8cPJu6IJZMO0+p9kLVsqdRZGVUwDnH4tTPkhHVuY143sery
	NyggmsA4rzWw/Jpwlra7nxNI/H1dk6Rt9HVkXpMrr0iGZZKnstHvicFPH80Ir/6nom0
	dmhWLoQG1o4qdbCQ3LO2Txu57A9mCiFxErfF0O1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654082759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+RWW0F5W0pgaR2OvdPlVEZas6TPLY9BImPvbECveSJ0=;
	b=SdRssVNwkYBZIN1VhqC91nB0INItUdFBUIlQTP3iVpjgL1kBJNWytjhyTEVcCHkj
	iOX5+8TWM9cg2/dzjATgqNvN6zPHi65Dvf8+WMkUa3/BaRNON4VTLw3ydabCEHYKiNe
	S1uqnyRJjF/jkYxVRD7+EtqrC9+vUJMWM7te8U4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811f03ea2e-b0caf701-9867-410f-84bc-3f00ebdfc008-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e686a49c9ffc5526c04a7dd6b84d8f2423bba4ff751b3230ca326759e1ab2e0a
Date: Wed, 1 Jun 2022 11:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654082759
