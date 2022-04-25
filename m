Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36DE7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 06:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650867118;
	h=To:Subject:From:Message-Id:Date;
	bh=Q+Byp425oFcdndW28bHFmKivyVknLD4BQPfosTk1wqg=;
	b=PxEkBmTQS1aSyCCQKT1W4NTRouIKbN9nz5XXQDdUnp+kCjMk4EsdVpv678dOchIL
	h7kOMm1d0TBtbyu/9KZ8Vv1/iIxtcqDt8cp4uVTK9eU1cKltdnyGsOf/fbSxeuEx78w
	FVkLzcRdXfxRV9o9h48FK/Hq+jGbpOOK2vOhLDbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650867118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q+Byp425oFcdndW28bHFmKivyVknLD4BQPfosTk1wqg=;
	b=b1Z8iClKAyVEGUR6XP9wBHItjuDNWrVpU40Vs6lhgcZ6oH3uPU52nf0W1KSC1MV/
	vnLamJD0+9EyaLyClsiKE6aYh/ewtfw0fnKykDdQhrKGQgCaU9srjkpX1XZkunsdeso
	dINGO4Urh4nlfze2VZXvFuKz4Oq1DEude9orhBKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805f592070-652c23ff-d3f8-4af4-9eaa-650e0f0fc087-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ff3a81dc7ee94b1b3ed22ab0591c2bf383418134698416f9267702b6e14172f
Date: Mon, 25 Apr 2022 06:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650867118
