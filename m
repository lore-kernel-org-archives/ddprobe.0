Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4BF020E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645415185;
	h=To:Subject:From:Message-Id:Date;
	bh=EiSqDD9PQAyJ0Fbn+XgzUFPswJegtrL1clqJ1sNszNQ=;
	b=B52EzwC0udbW081eJ51AqL5SgoEEzqIVEA9JUeefuNTaps/yyctfUMaJBXQg5Xo9
	VgwLDtYhqsORwwkDoBNMgJyV4CTMUVv1wiOm03rmQH+ufPKoQzdt6UwhsfuApj7NpoP
	HpT6gJ2VbH9edjDY221uWtJFrSPhIW4bOA0NnnPE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645415185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EiSqDD9PQAyJ0Fbn+XgzUFPswJegtrL1clqJ1sNszNQ=;
	b=kOvurOdV4bP4fd9SrUCQ81YnpgHrAms6hAv6Z/2WMULUyIWTVdlls3GXoLzND16V
	yEReALAX9yp8KsQzV3g0EkONgDx5tgiFO/57t6VwMe3vEyJ2x1BxPw+QQwAbFpdWhmn
	wcb7Dvalme3kVY3IE9IC/KfX5bdDWwdlZW2SOAFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a63396e-b9bae3bd-cf23-4603-a5d1-0c7b996dec33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e0da184cb3e57dc2587923e7d5e20f4781699f3493b7844da355892e0ef199b
Date: Mon, 21 Feb 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645415184
