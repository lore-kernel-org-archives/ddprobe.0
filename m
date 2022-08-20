Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C8F20E7
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660981852;
	h=To:Subject:From:Message-Id:Date;
	bh=7HnTALc8Osxf/nDkNstvbBmsarKFDHuxFtiz8thL7bc=;
	b=BhR1bjujHNS6rSAK99FyqwOJaOSlw176pSuc0QHgiiPMwcA1DBgn2qvclA3OdZIx
	dXMsiAumrPYN0vUAUB7FmO/8jhu/IU4ZEwawh68hDPg/tkOYtwYHFzBS+on9BcvT9Rw
	SDRL/7Q+XeZjw2ZHiEuJlJBO2y5x2iXVrYmMsdKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660981852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7HnTALc8Osxf/nDkNstvbBmsarKFDHuxFtiz8thL7bc=;
	b=dQfMTamQgkfthEpdsT6ALtLVF/EaPalircfgl6gSVGVeBnseKxUJbgRCY6+RnDrZ
	ZqZDn91BuY7o8SxiMik+eA5+A3uh/JTRtI2f/epaGx/LPslRo69z2dDrHee1tB+eRDf
	+E3dvVGiT8ssYa4WXug9e8JZUhhx6GHhtAtI7KD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ba3bb991-08c83cef-cf2f-4014-8b44-9d5f746ab216-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcd53072f63ac4db8396b04135ccba89f891c57f51f766ebbbdb134ed3b7fe28
Date: Sat, 20 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660981852
