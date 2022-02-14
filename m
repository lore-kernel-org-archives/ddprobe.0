Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A453DC80
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644869185;
	h=To:Subject:From:Message-Id:Date;
	bh=9oMEE3rqcSx5gkuFWfyesFw7aEN6/I54Ive6Zr7fez8=;
	b=QqQ13gR9eLH1/2jNXN5yJl0mz2QO930Z+JbFmzBB/Bdi+m71PqXiFIlf8AQ/fTAx
	VjjT8lDdKw/6KVQePGhoh4Y40KP/giCIvvezO1RkiOGO5w5DYM8FdDKLh30K9skPPor
	NZ2IFX2JG/awDM+LwPFsi0pdY6KE1gEvpPRdVODo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644869185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9oMEE3rqcSx5gkuFWfyesFw7aEN6/I54Ive6Zr7fez8=;
	b=Kkc6jS82AghUK7xKK1BACL+rweWNA+i24Ubek2ewz3BHOMUe8NdIZ6Kf8x1AM/xZ
	PTOx+sOCfw0dhwJMy8VNzfnaLDvqy4rN0Dhtn/PhzCtJk1EU6k9lzoBNiYB233xi3cV
	wbPMBT2JZuMaR5KpAAO5p31CJ7Ja7Hxil7f2GuFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9d7ed22-c7d3a9db-d848-49b2-b212-14ac9c138e49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4e175b18e48e5a520747543f2b098b39df0f53a84e04ad16602f856fec3f430
Date: Mon, 14 Feb 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644869184
