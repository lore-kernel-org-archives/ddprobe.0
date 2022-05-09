Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0FBC10F2
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 01:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652058238;
	h=To:Subject:From:Message-Id:Date;
	bh=pxoStZASXeIx1whAAIf5bUbM1BoRDibBUwWhSspLxBs=;
	b=GdyFRGCl61XJlf8rmVMo+TLQq4vN8tAHWpv+oFNpb3Ei6ctWJG1XCd/OQWF16JDj
	7G3JsdjlK+ab1WoLF9xJkK4UkFgV5KgUiZjNMrVoH1Y+FrFHh6g84eMYad8iVOIencF
	J+OWtcOTIgwlTDtx7E1ctxrza49d1ErBW30j8a2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652058238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pxoStZASXeIx1whAAIf5bUbM1BoRDibBUwWhSspLxBs=;
	b=L6JlhgqqfotGBH85X4T7tONbW+K2cXgIqZ8lEZnnRf8PBugaHDFSc6kxv1LYokIS
	Qkw7T45qPrMq61MwRjlwjf2OPz/hGx7hj8WZw4HLsYVT75OjXlxWcCE/uh1K0uVUVTg
	wSdBddJvg/h0UiuaIbZoaFA6sB5I05eK/h2PrcQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a6582d3d-659a2799-60e9-45fc-bf01-d6d9e8ef025d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 621310d7e30659ba5c3893280abc5ca893d38f14e3848140180cdbb5aeb95417
Date: Mon, 9 May 2022 01:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652058238
