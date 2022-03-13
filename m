Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505327E
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647180684;
	h=To:Subject:From:Message-Id:Date;
	bh=EP7cRvaeg4iiyCCcj1xpJnOtA2/y9OH/1wGEUdnX1Ys=;
	b=P9lN8OmojnV3EwTmxJ4ImD5fZnorrIfJurIYPMhlrQUNfSo07ZgtONyUydAE2L/g
	M0RqYUWcG77Z+LM+NMFW6l/Fs/itVCuFeKpy8NLNLVRodhMaqVKsWgVH5DskB6y7uBp
	dYMLQc7QCaA51abrsWQVhyKBQ/NtOn6UHQD6oiJU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647180684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EP7cRvaeg4iiyCCcj1xpJnOtA2/y9OH/1wGEUdnX1Ys=;
	b=aLiB6vXvCt3dzuP7fiZdLdrFo8Cit1KGGvTao1HV4HYrC5q+tcTe92V9yELayre4
	71lqCGc2wLWGePedByf3Wqnn7vfYjruvG62kDmgBiZKkc3iXvYhQPxP/mY2F7BJFK7q
	H2sXD7+jCb3n89t2eFsNvzR6eBRY/Nx12ceXacBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f839e9dba-2c217899-8138-4f85-a128-b28c3ddd5431-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bdbc4d11290a44e1d5f1741a88c2f196e358655878a26a0a624156ed338fda4
Date: Sun, 13 Mar 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647180684
