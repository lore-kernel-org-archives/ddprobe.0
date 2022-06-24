Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03ABC23A0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656110812;
	h=To:Subject:From:Message-Id:Date;
	bh=g89HDEc9gTdQ0xl0fNL5NZY2frBmY71exWguWDlRJjs=;
	b=TjdY4+/P5z4zCrXYl/JrMeowg9JofGecLaPaBbyg4k8O7tOq94MD+34wpFFLENQJ
	VFRzptQO3fV6iyDsfkAw9zI2v1uf+URl+O2rugfqywzrEe+ANnRCbt+/gyxG6xx6mGK
	MsfGF11dhr9p0qL1P7uV47BBwHlvvcBBfE1POvjE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656110812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g89HDEc9gTdQ0xl0fNL5NZY2frBmY71exWguWDlRJjs=;
	b=WvJ+i4vSRocD/krmFMER/IN9D5n4oBVjvzHqtqglvQ8EshuQfSJX4jJt+FkmGPHt
	xGK/GZwvU0vRJdHUNAxPW1MC0S+YO5Qs7/zpkmbzuXKaqdmT70iL4CT+6iCmlIVLTPe
	Oc7X0R1Z1aNLPmvKjKSGdlCVuE1izK860iLG/UmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018197e58c71-25ece4ba-b5f3-49e2-ae81-6f21bd3c557f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 640d6bbb34e3db83bb1bcb1da6db465176cf3f315dda161ad5dcd71618e42e8d
Date: Fri, 24 Jun 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656110812
