Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753E26AD9
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647295284;
	h=To:Subject:From:Message-Id:Date;
	bh=2/M/+cNK0w5dk1RzBnBh9YYTNfikPI80YDmmS54Rf1c=;
	b=ip7G+/dcsqmg1Ztzg7sqHukrIPdFrXWiER0lXRGRJPqEcqZBLk54rvB/+p2Usk5q
	IVJU/+f9xA6x4KFGr0l2ns90le0fXBBIqRG2utyx0FfdhOnRimwiYZTU+lqJU3p0i/V
	JbC+f9/ofmrLQKC/+rj9R/atcVyA03TdL70NZuvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647295284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2/M/+cNK0w5dk1RzBnBh9YYTNfikPI80YDmmS54Rf1c=;
	b=L6c2/pU3Vw+uLlioXrUvI2VxPvvZxiZ3pOGdmWL+6J98kiLmJeYBvWMswHCRuT1k
	i97t6YXVi2WL9jGL3sdOh+WG6o87kcAILOxd8ooldS2mNV5huvRXuNxrrdGXwA+TfKn
	3kjLL0ws+CZ1TpOgMZjyU4/nAlnD/28oDRq5l8Hw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a73464a-c89a66e5-74b3-4344-a291-6c2af10be63a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c171a604b64a22e8aa2112cd39fea5082b414c60df1439e7970414c1951fb7bb
Date: Mon, 14 Mar 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647295284
