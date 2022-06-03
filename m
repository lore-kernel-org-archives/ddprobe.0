Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B05A23
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 01:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654220519;
	h=To:Subject:From:Message-Id:Date;
	bh=goX3b0B/kckiH/sk4UCd6kuthXoaISE4Oe89jAMlP2s=;
	b=Fo58/L3S5HGPGBHh3/WrfN5TqRdeeuH2Nwmt2HJLUgWJyEikVOglWliRocOsBlsT
	fcELW21KTMh1LhVjIPnvcMI+e0DzgAiUOXBHs+RGZJGjMK65p+F6g9N/FFSn7bCskeh
	dqfQZWpd5o0eVZ8wXuxkiIyVAoMtr97lYiqmeuq0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654220519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=goX3b0B/kckiH/sk4UCd6kuthXoaISE4Oe89jAMlP2s=;
	b=hH4JawZ0Z4y4Y8v5bMtvRZKqIxGP6gWwjKGJRHmJKyx22s7KISOFs/dHK4Ke1FPT
	b3NmagmJA1iUrHa+Kx92NQJiP4DM7wmENonnQRLLcuMLXE3Zo1+bvPSNXoWKhTrpTBv
	k8Erbo4BVmyP4yhmviz5rA+c0LLoAz2tPVdQC1lk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812739f750-199bf8f2-f2f7-4bae-af27-06aa2e45b19b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c383400c2139c103a4a891afdeecfcbe6d6ca7d25e672f1dc8e818300a2b0360
Date: Fri, 3 Jun 2022 01:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654220519
