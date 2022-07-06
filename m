Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332D720FA
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657084012;
	h=To:Subject:From:Message-Id:Date;
	bh=FQccxeaKs1e/z1WIVLoZFIV7Z5Aytw8Uiu3IRl4smAA=;
	b=a+/DbnXHPae85KwBnHxal1WFfv7IaBiCOVrtjMiRyZmdc8bdAv+aSKQ+2i4Wu9sn
	RoSDyzvxPg0Cwb4hg/bcTDBi9f932VwgRa5e4mTcRxfcUaj/XeELzR14TYyS/6lhb1u
	/DBsyD4gKFfdzyB68CrGJaYVckhp9I8COJgKTvgA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657084012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FQccxeaKs1e/z1WIVLoZFIV7Z5Aytw8Uiu3IRl4smAA=;
	b=Eai0l4O52Wfrp+Gjv36tOY+qOuRQlAyHd+zfSAhc8UmnpN/T6kE+WLh/pFpFOzpf
	T5fVno1jAIumGFRXXgS7u7aVZBGdePsB0/RCdPDArAGkzP/b557rmImFo558Bjz04Va
	Z9gGIErQUIg4jIk2SByrUrm0SdUkvdUhmuYPVito=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d1e766f8-06d480e3-6ebd-480e-976a-d39bf05a9c25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42403d1fb3ad9c962726be17485e4ec0d0121f818d8ae7ce49066feb43616feb
Date: Wed, 6 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657084012
