Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F89E7C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 12:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648556098;
	h=To:Subject:From:Message-Id:Date;
	bh=pmpWWa69KchZycXp44Nh/h0yWfxmjJDCtiWmdaKpoHo=;
	b=B/GmOo9F+qBZhdcKjyF+fOb16BA3uJ0YW5nfS2ofBHymRipAs4F+9ttklH/MGlgV
	i4T5QJ63N6gLbafq9ZHvoLF2a0aeQm8m01AVDS2QZM/vp0VseSEo097sY9TW93asQDG
	C0T4e6W6/S3fRR9eSH1VnHu9gXyaiS5V2+fLR9js=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648556098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pmpWWa69KchZycXp44Nh/h0yWfxmjJDCtiWmdaKpoHo=;
	b=UfZD1aMaiaOgwg1yResiOStLxUKviwsiZdRTOgLB1q/n0ScoDhzWFgizBWWEab7R
	ul5t4d9Xj4agrMDEUmFbMk0/p/HIAdvBGtzlpIOz5yhdkasIbe8EdKA/lBW5WE00kep
	B4TpVHWnIbJ67T64/uJukyQx5z6+HIKgtwX39DtY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd599c2bc-b257dd19-b056-47f3-b83d-38ca9c8becc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 324294039c66b60e9e95a5aa29df8c8318389425e7a3af55b2a62f0db3f15e9f
Date: Tue, 29 Mar 2022 12:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648556098
