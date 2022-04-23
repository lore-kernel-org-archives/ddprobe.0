Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEBA82F2A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 22:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650753178;
	h=To:Subject:From:Message-Id:Date;
	bh=9yGbtSSq18HdGMww9Uw6lqc5fu4HBkAsIbUbJSBEs4k=;
	b=MVMfMTU2m0NE0Xh9VUfQ+E4suAYyOgAF8cBh8Vif4vKv9mCaC/xuTVyg0WuZWTfw
	URuwT1jUZ+1K/yo2MofOriRiwTbZODo/6MJxyQiZV6i+/tuFBs0lIE7sSPRm4P+tyhi
	oTwj10aww7X1Qy7OGirsnZ/PHInyCMa1RpYDjTRw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650753178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9yGbtSSq18HdGMww9Uw6lqc5fu4HBkAsIbUbJSBEs4k=;
	b=bQSVLqlsq09Kp8oAoAlmPb/ZBfEPc4hn6F1sQIVbNpvDZtnj+rhj4GsD3glpOAjA
	mUa1g1d0EN1jXNLAwMWqShxnhO1JUJTaAaeKRSdFwkYnsgWf85A6cttQxvOOjLrKV63
	n0NJGHoXG8hFTp1ReA42v4QNy34y9QDn8MFsed2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180588e8a8f-f64b1852-d094-4fb0-b94d-74f749ca7fca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7917775e2f5f8d6a901eb46767ebb0751cc5a22d92a52c9c8efd7cc51634e3c
Date: Sat, 23 Apr 2022 22:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650753178
