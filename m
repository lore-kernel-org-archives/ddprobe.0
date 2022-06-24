Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116D646A2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 19:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656099412;
	h=To:Subject:From:Message-Id:Date;
	bh=DZkCrO+FbF3bnsv3c4Be7SGpGkiVSJNxYXDKx/bD8FY=;
	b=DPmtNIA5i1uHuIpAzZ0enQz+NiXWzP06p7S+DY0hLrmnv/iZ2sab9ylAsjUH5gdn
	ljTdWQLplnycYjBpGfj52bl5zCcGVRS+ypG6ZGLzQGkOR8m0a1Voa1h0dIvUoG41VI+
	oNZxy1EIiMkJTv+RfOcQyGvtNt0LkVyuMNPjDGP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656099412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DZkCrO+FbF3bnsv3c4Be7SGpGkiVSJNxYXDKx/bD8FY=;
	b=UHQwYTBefGMVtDQPjThyM2XsPtlq7vAnSkDRr1o+3NWW/M/GnG2vX9hjaY0eC+0/
	2w29TMSZ9VGbHzFPTd0uZ0JM0ZPCNAii5fHkdOThnFWbXH6migRDrFI+QiyhPLaFoLL
	G6aCTJ+EZtW1LY+KzfdUkSavS766Nb1yaSwAk0fQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819737993c-f16b6303-053e-4912-a0bc-816781135782-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b6f8b7338830a3d80c623baf36c30f83195715f85a013ce36e29d39de97900e
Date: Fri, 24 Jun 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656099412
