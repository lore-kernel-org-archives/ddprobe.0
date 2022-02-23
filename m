Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F3687A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645600284;
	h=To:Subject:From:Message-Id:Date;
	bh=xtA4z78UQ6I3yLCiGgvo1tzTMV3v/RagOvLiaWOG4Ho=;
	b=l6Fx7Ni1A7MlBCsk8R2vC3N2OhoVfKJmlO+PQMU/oXq8J6IxHY936j+CSGx6HHtW
	kJ2poVsuHkiHbmMOaL8A6ny3mbvt03l4JPirzBJgnCl7Vp1Ole7EhrsRKY64mFELApr
	uauIPjgVlwEwxDLdb5X5nBBd/IIPshWhOpuNorCw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645600284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xtA4z78UQ6I3yLCiGgvo1tzTMV3v/RagOvLiaWOG4Ho=;
	b=XfV4Ah/W24LMiC8t6TWZZTPxCZshRpD2mAXAojHTQTpY4TQWv3jppGrJG+3dgPVA
	hjMrvTxwPArVBdloFqeOESsIvXD0sbEUTazISFLRqjPpcGzV/i/Bvc5k9meeUu44zxv
	SosgmNbAd3smn0mgb5EXK+adWn3y7EpflFWxE0LU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f256ba059-9235426b-f89b-4839-b07f-5b5b808e2653-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52749f356a412454943e66b506484afc7736aa014cbfe6eb2baab0b0dcf06413
Date: Wed, 23 Feb 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645600284
