Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228C27C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 08:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654851239;
	h=To:Subject:From:Message-Id:Date;
	bh=4R/jp2fNaCL7Fa6DqFo4MxGtkTIbUsBzFKvJemsEL38=;
	b=fp3NUMMDf2BKOt7JFHGB2+kt4hJDfKIGPtecj/d5r6ESbA4240D+xLZjbkuDwcvT
	zMwd2h//jGOG3DxszNTiiMhZGtOOXlk3sRgxpI6+udIC65vRGHxrWJ9EQiy25L/EFOC
	K06vSaTtreHAuPpp2MNGhcUEv6ZDVVuidaBIM5zY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654851239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4R/jp2fNaCL7Fa6DqFo4MxGtkTIbUsBzFKvJemsEL38=;
	b=FtJkwJT6kl8zpU+Uo4iEwsoFYllWQw03MBH/lEWRfyZcSibSi0yQW77WdPVT6VTn
	gGlvNCSbovjjyoabG2i6tSGe3fUi7vcbas5arS+Foqd1wmvMR0JVeOeYmYotgWINWJN
	SqSV2oYdCC1tJevkPGBrgZ/GJEG4vsdS3tgo5CgY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814cd1fd1b-366623eb-64a2-4e25-b75e-1ee4f3800d87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bca581a22173ca1a3cb2930f320bbf97b3bc341a8f3cb4cd4aefe868cd41d9d
Date: Fri, 10 Jun 2022 08:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654851239
