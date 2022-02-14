Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B0165A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 02:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644807048;
	h=To:Subject:From:Message-Id:Date;
	bh=Q94Z4EAjAzd4eXeBzhp0PlQB5CPrjOdw+qqgMC904bk=;
	b=LdjXCXnzIQLCnwVnxFe5+oxdklOVXYU2XD4TZuNAPj3V2ZkMhXooZ3zAst5Mw+Ql
	ZDDUuRR3I9zS4gQCcePK/LiFkooJBmRl2DNTM4aZyHJjqCo1dsLFaNremWUahpjLdx+
	F+YE9ibbb3NK8V+B1dju3KKj4zn8w29o51Q/d5Js=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644807048;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q94Z4EAjAzd4eXeBzhp0PlQB5CPrjOdw+qqgMC904bk=;
	b=fLdxQBZnlm0E+uPhKNcvx6DBW972c+UN/AleOY0TNt79+txXGZVHBtw8lq0mG4FN
	VT3wFvan4ogB04oS0u5GojItiyk8Bq2Nrw4qv8n+v6SxcPwqMsj0b9i4f/T9/A2dVst
	R3MMcZP+H1BBFIKq1Nhytk0o2fvR55W/sB5epXM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef623cbc7-ff711c01-ade8-4c00-8e03-f527a62a596a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0406435ef61537bf7975404e516a045b7f343e3f83f707958d6abb4caddc2078
Date: Mon, 14 Feb 2022 02:50:48 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644807047
