Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D746136
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646258184;
	h=To:Subject:From:Message-Id:Date;
	bh=teui9QCKazd6vUpsG71xnJf6jK2tWryvzg6JLrhE73Q=;
	b=VBFbJLf0Ouceg4Bh+o3x/ip260H9ZLeVLLDUxEqMx25XVPdVUZ3qlxHYXRWC9JXp
	ZoSgCDeG4f9g6PpK+7UVarXT5LxO7fFO3DoBIcdOtZghyKHp+I0tzmKBbP/Br5+mG6Z
	8ccDmKJzDmujKS3cVFE7TPMFumJZJtPXixud5nwo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646258184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=teui9QCKazd6vUpsG71xnJf6jK2tWryvzg6JLrhE73Q=;
	b=AEKOF8yrPmbfpo1/g9Bvb4pldHWv6RIaZ03p6tXqHEIRLkMS0ZOfpZithUFhomjI
	uWpeczVxSHooyo26PncJHdRea2LmfydROeRV8l0TGlevyfSqPpYde5/Pi2SQmIDcSEt
	z//m60W1OAcfCTqd4kqeHVmkyeeL8XzxVNYlAQYg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4ca2626f-628a5ceb-5345-408c-aebc-52748e55998f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac459eff63e8e073a90d1c03d9743a2bd10f1fa21aa3c77474a9285227257ce5
Date: Wed, 2 Mar 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646258184
