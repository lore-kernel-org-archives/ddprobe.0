Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 881C94688
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647421284;
	h=To:Subject:From:Message-Id:Date;
	bh=rSy3fXuSno3q138ifM1k1qgeMtd7YUgjK/6m1u9bFuA=;
	b=foF51Z68XEO8Qt2C8VJHuj+02/Gr/+X69p6SaxVacrTKwK8ct7NEt0nv0O+C7/0E
	YwqGtWTHEftQNwwJzhwDK1St09rCdjStZbQVsFVQpaGK8cQe7LDQCZ+jag36d8EpjyB
	dmIty350MbpunNQzdfrLU7Fb/Wr5DseBDfiyNbVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647421284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rSy3fXuSno3q138ifM1k1qgeMtd7YUgjK/6m1u9bFuA=;
	b=bZg/ev4GF1K9OB9ySjQrmf+sTDeFkMZwdv2BazfYSSkO/s/CQCgMx4H7zOcz5q3Q
	lHljROZofQXkRvVZ6VFrmlH2D1Qg5GT09xUHzxZYIrjUyj6hMXVkMyHC4Gz3QPJENgS
	2DP9mfT2RbITYKItH1ppIPskCMTgv6LAaxdnHq08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91f5e18a-fa9ecf47-28af-4ef9-9a69-392c48e8c16f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7f14b1d8384f24d02cdf476621b7d4bd95192213d1bad1793af6b6e7d7d2a19
Date: Wed, 16 Mar 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647421284
