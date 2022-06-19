Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009AE7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 02:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655604359;
	h=To:Subject:From:Message-Id:Date;
	bh=hFyASUYibh0lshzA7eR5VnGqM5yEPKpT1JBlSJkFdF8=;
	b=f1DmFRFs4y1Eik0PtFdFmvicgKvIY/DTKdsO9Urta3MGDmecMMtZX2ZNcAX3D8JF
	qUzUptvmpRDSBEZcW5mJo7OclGrnoVqxA1VBz4gKV+6MGxPmw6lxoGC+YWtCz4eeU1b
	vmUBCVO33FiHuus+UxF7yvBwgPwe8waIbZudKyFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655604359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hFyASUYibh0lshzA7eR5VnGqM5yEPKpT1JBlSJkFdF8=;
	b=LhziqiHMy+rh+4Nojg4mDd4/JoALGbCTjQee6T5oyOdfcdYMezq74r/aDdFA2YCP
	gf2gotpwnEQMXFIyn/JLrAJi2bctx+xW3w4ozS57lKAg2bSZ+qkGDVphsN9Z0gLwK8I
	NS9nDfgDYN/YOpFMS75R1SzRlTBUKkllyA1gDIps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018179b5b06b-e6feeb77-1d5e-44ce-83b8-ecf1952e9420-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eab2f872ee510c9acc8b2c1fd96741529d96efb4dc2971bd6c3339ac65f0cd6d
Date: Sun, 19 Jun 2022 02:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655604359
