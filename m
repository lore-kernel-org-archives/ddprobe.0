Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C9F33C2
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 16:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652372639;
	h=To:Subject:From:Message-Id:Date;
	bh=genjTUK5zhUDL5HS/KBsXJFWZt7DY+AtD1jZJLeDhv8=;
	b=EyaNX2A+3t/5wfnECJBaWAxKp3MFJIaTTjWycDFP52UodklW6E4JCNbMIsUO7BXn
	k/KKtm1NWL6xKuR96LpxHnoFxH0KfkY1Tgxl6DfS2ZFuZG3/SogwTiRmMplD4xOBIX1
	/30hJ71iZD4x0bbbeycNYwMCSOYN6pYi91xLAtNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652372639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=genjTUK5zhUDL5HS/KBsXJFWZt7DY+AtD1jZJLeDhv8=;
	b=A6F8CbA73NUaTg5zVs8j67fZeZMvaInQQiocCrSC/2x1KXQb1Jup+/8P0Kv2rlwI
	utQVB0p3t7aRRmTlaPiJun4x0Ku1upEiO9FkTBxISvxVb4o6YaGJDbN60tw/EGPY0jo
	I7cRIVfXE5Rq4VfW8nlMoiwbBZd4HKGHd5r66KRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b9158e4f-6252061a-1d7f-4f70-a23b-cd8edf712048-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c3db0bb19eeb2cc630cf2a17c7cc388428bc5f887ed05270a65553aa59852e9
Date: Thu, 12 May 2022 16:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652372639
