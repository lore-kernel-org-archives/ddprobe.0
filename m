Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102BFED2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 13:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654261319;
	h=To:Subject:From:Message-Id:Date;
	bh=D75AaiOJcP6EwPQXoAog/OIHjgm1rKPzbp/kFzpaTCc=;
	b=V9C2Zyva/31BuE+qtBkZYdwdrgDgw05ib6655hFR3+Xf+J3s18KmAtf8B2GCI3fU
	AJSr/bbpuAWOSuO+4h1pGVAWNaJukIGFQJqZ/JRFpDNdbnNahf4nXFbgeBe97jrGBUA
	7w8ItAHhaNb3U+tOXp/mQ8AHuDz3RIUdr6VgsJSw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654261319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D75AaiOJcP6EwPQXoAog/OIHjgm1rKPzbp/kFzpaTCc=;
	b=AIePAz8zayW03b0nHfDCjLmbHi3nZn06O77eVqPL5FzeybpZmCs50FquqwA0bgTF
	DvfHsCCD3LcNAYZvQ3TiEtNYd7qQmpP5U8YY36UgIHKq+YuMfbEboSdjdgwSW2Eg5DO
	rI19SlSn8rQOiy0SZ1xZT390o4+R9VSXR0urpo4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018129a88670-8ebf4378-d5f6-4143-a9a6-fbcf84568fc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7788405b4193e5608ec94421963d51861672bb49d6d7e16e86fa511aaf3f664c
Date: Fri, 3 Jun 2022 13:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654261319
