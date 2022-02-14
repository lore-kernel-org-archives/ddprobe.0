Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6477D
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644878485;
	h=To:Subject:From:Message-Id:Date;
	bh=dVFtFaTQTkMSyJ52OfH1E7LLlF9ToOwXoNaYkCyBMoA=;
	b=LUKqCFEgHV3VEoBVSBP2nIHcUQ/LuSYRxHpt46n7B3vTayzu+9Mu8i/FjuxPengI
	b36IdFkRJco/QYgTrMre3stgIwpMdzOA6K4KNQQo+NLTlN42ZT69+zQiG0+blv8j8so
	ZwV0Li8SP7xhUgZ9ngE6k4sJJbLN3gLIOpYyHI10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644878485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dVFtFaTQTkMSyJ52OfH1E7LLlF9ToOwXoNaYkCyBMoA=;
	b=jp9JVa5W4wGWvMxxcES9OnKS8DpJ75nXwRMeX2y06y0evEJSMO6BMsm9pNKW7p8n
	YaKTgrZUieE04XgguHLxzuSJXq2HGJYrrNV8XwcDSE6F6/mFDGNlD18cA/gFqiFXFuk
	lAOkNFe60+JqojOzqIdwu09RElMHejzI+ds3kbHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa65d55a-eb49727d-798d-497b-bd02-ea429dfa599f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cacfd5f3f5ee6264d735a7c5dc41fac759a4bc73b646ecc50c428eba4e601af7
Date: Mon, 14 Feb 2022 22:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644878484
