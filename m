Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E4B7C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 03:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655176259;
	h=To:Subject:From:Message-Id:Date;
	bh=Mn49cKGXnsE2piwagYOgbtWDZtyKwsAjtytVtaUJAFY=;
	b=jIrmSoKop/XUKCP0odMWxODOBCrQJ3NvppDO7U0+CjJ9+Qr+I6FzgMbB40gSGyOk
	FqOeyzHlF7qyMP5M9thABl9ahIOykNgZpq502Z4e4q1aE/veK6/KoJzeSExuiTi3qHl
	P2eIa7nm/lTUZO+2mFArP6Z5Jd0W1b/x5z/q56LI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655176259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mn49cKGXnsE2piwagYOgbtWDZtyKwsAjtytVtaUJAFY=;
	b=NF1XBDebwFJv/UpmVtEuPO8DUargNxxCkkSqI+O9AdmbymFHGyh0adOohinzn9pN
	u0R+lWrIlv0EicbB7Ss0P8Eqd0/fi7a24E4ZrZDvBQNLpxidBtesmcGe6zomW3232zc
	zE1ds11akuY20/QXGEPzAn/fpRCtsfhxe2Lr9SDk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181603166bf-506468ae-98f0-4b14-bf71-163e9e37afd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8559fd60cf5878df778656a01981aa2b5c765d25eaa1661b37e926232dd1a7da
Date: Tue, 14 Jun 2022 03:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655176259
