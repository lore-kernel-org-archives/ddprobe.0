Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815F83FEC
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647284485;
	h=To:Subject:From:Message-Id:Date;
	bh=83kZN1wivpv6C3iO8Aud01ZNnVTu1hlA4B2fMa4XRQ8=;
	b=djyMw08XCNEH3/RTZZ6UAn9MuZ/OAShzrc9YuptAe04FGZ3yg29koE4ksK+g1EB2
	HKrtjSrJIESlr7sfSlVxyRq9KCUypFTgPfStV3lOojQHdJ6D2+PkrS37hpbFBemB4vu
	NcumWczMQAq3S4dI3gymC6OlfseYBPMbg1hxoCAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647284485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=83kZN1wivpv6C3iO8Aud01ZNnVTu1hlA4B2fMa4XRQ8=;
	b=LfISIThRItDZJta76sOY3+nqgeFBTrpMLqTnkKccxAAeyDLlGCbMndDcO/lsBnpr
	sFx+mKwliakpwmZVHq7+/94pOM8FxjMKULaWSD1RPe1jtaqOzMUWZ/jr3JXnTUPysaj
	Ctl6sTnczNjgnVrBWNVNOUrGW8gcujzqzjISG9g8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89ce7b18-6a589921-bec0-45bb-8367-9c4ff46cc04d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f5e28943626657db533edb47783cc11dcd692b568c97cbc09a5f8a925850149
Date: Mon, 14 Mar 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647284484
