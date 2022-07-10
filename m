Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D092F3D
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 21:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657490212;
	h=To:Subject:From:Message-Id:Date;
	bh=WN8L8+hvf64Rn9+4DwdfcG4plgnLcTCerakyRBOdEXM=;
	b=RHs7Wd0rCxoIXxRmIkClUSzJthm7+J08JTgBR5DiNTiMBdZKY+IWJEqDOSYuMwL7
	BSYHJ+OQJZ8mcW5yer4vz3byGrqtWsAz1EPBhFLIIkijqn2UK3RwGDJdwaFkSOq4Qkv
	GDu3aCBUp0SihAGmWR2AVMZ+pdOi1avbAPJ7SK7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657490212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WN8L8+hvf64Rn9+4DwdfcG4plgnLcTCerakyRBOdEXM=;
	b=dMlVbdxB+HilkQG1Dvb4/LL/TrkmRmDairhLDhd4/ljZHECJ6l0hDLdYJYmgpi2y
	Yt7ZW2p+TdXkAFdDCLHq8Sb3vXV/JKrICxa2ft8qq841sTMyomnokEedz2xoiSYiPS5
	ysnJ/HjZQ4EcEvVvD2c86l9Qf2tZE9+KO0neB6RQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ea1d85f8-de71051b-c077-40fb-a11c-577697bc18e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e9fae04db903743c76aba0b14788d110ba8e6814353066e198dfadb66b17723
Date: Sun, 10 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657490212
