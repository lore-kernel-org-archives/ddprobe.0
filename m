Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394AC2F4A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 17:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653069479;
	h=To:Subject:From:Message-Id:Date;
	bh=AXiJV6k1i1Psz5i/kDm2X19+kKcqwlv4UY/PXPBM1gc=;
	b=O6SqTUFdHtoYauX+pSPSbgx86T6HU214/hViCIkqTvs+KUVRvAKL0VW4iyOpzHRx
	TAX+FVYF8s8Jk4YAYoKYmtPm0VBi8EPL34svD7of9ARYJL0G1ceeXfPuJE/rMUfnM94
	a2lRmCwSQW3pCxYyrvdvxl97WfeTf2gKh8RvbUTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653069479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AXiJV6k1i1Psz5i/kDm2X19+kKcqwlv4UY/PXPBM1gc=;
	b=O3xKHnY09jGbyBoqQIvJjwCHhXnyJR6lheaX9OPFhNljEs/aRgpNc7S7e7pfGJr1
	ILOf+0W7xcB2op3jg0afU0nte5TR0cP1WJI10dWvGgz06TYDReg605wkNFiwGFNIu4T
	tCnDv2ahCPIR+8rBaCzv1kB5fJayfRG/vmh4NNIU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e29e7d86-1a7160b6-7290-488b-9150-e9932c2ad82c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c00d26d24e68c3e38bc9c4451734fcbf8dd1ab7a59406039e077fe4d693d886
Date: Fri, 20 May 2022 17:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653069479
