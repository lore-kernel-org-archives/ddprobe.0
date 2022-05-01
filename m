Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FE923BE
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 05:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651382218;
	h=To:Subject:From:Message-Id:Date;
	bh=y/vj+tGELoCksos+y2qIJWFtEOgpSwzYWk8xoCeT4dw=;
	b=XUQM2jpfOWNblp938dKSk64ncoQulf2rcGdwHPcdolPCJAJ8Ps1Xn2+Z4aJoHS9t
	NHOQvT1Qgy2LMStnWCJklnrOr0oMhpVfyyqu+T3mn3zsg+Yv5qlCeFzl5gI37uOsqQe
	Pq3yqOHqXfTZ/rEMVxS2km3o7wmdqPyIdcwaWUfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651382218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y/vj+tGELoCksos+y2qIJWFtEOgpSwzYWk8xoCeT4dw=;
	b=A1aCgix8trbp6sq7s15YKUV52F2EKKrAEzYsLbh+wkfBSAblBEyVPdl8RynzkfO3
	cbSkqgHhHdjALIJ53Ud1UVwGmHSO2wjRteOVUCHHASRNJj+0oC/dxjpmhExp5PD6GMa
	16uwwGf8qUY7Dmej0dfHEidZT5bDJ6LfItEXz6SA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807e0cedfd-93b97d48-a722-4721-b4f0-6db556604073-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70e38d338c7bd0871e86bfdaf481175e10505e5fda494af2a7c37343b84f6ded
Date: Sun, 1 May 2022 05:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651382218
