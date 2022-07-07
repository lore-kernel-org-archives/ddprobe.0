Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235942563
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 18:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657217812;
	h=To:Subject:From:Message-Id:Date;
	bh=dFXgfF09MoPHCFdtkIwCqMrwe4HPTq7jzgmPVEpi5M0=;
	b=Pau7cpsYiDOb0qpFw/yPZoxyrHx5zyfw/pm9TQnvn8XE837lEi9UUPMHFPTQjR9H
	0fY+30NxTIt04lFpGefzhx3yWXpQWwYa5xq2XY1cb03DKefFHeZkGr1Skb+xrAb0bWt
	4tkTeR3Knub/EGIcKiIqnGDVfL7BE/eQxU/FJV7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657217812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dFXgfF09MoPHCFdtkIwCqMrwe4HPTq7jzgmPVEpi5M0=;
	b=dNFTWcujj1FQ/zHJhR4und4/4x7WIg4Ok+FahT2zwSnGTu/WlvW9pXk9ZyxjN6Xo
	1a3PrGrK3DYLALswbQXRjWZH6kmW+AM5A16U1YCvU3M1zrtl/1N6QiBvMXfVsn8Zdh4
	/z4zM1ICjbQVTkWcK1GvSk1Fww7MgWdw8zmMMrEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d9e1076d-10866b38-e75f-481e-a5e1-38de156b644a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53935f398f346941c0b40d60242b6deb30c92b48f61034822c18b1e168820373
Date: Thu, 7 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657217812
