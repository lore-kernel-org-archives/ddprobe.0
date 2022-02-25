Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABCE910EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645761385;
	h=To:Subject:From:Message-Id:Date;
	bh=ONKtsPD5Ats+4x5aFHJixNp33ZD3sTN2JL/0BpsI2Vo=;
	b=GeMFe0WFTsHARQiEsZAyBNHtdjL7BweqzSbnY8xKzGwaWxCd40e4LzFvrBIcA/Sg
	WnBPBWCT42xG7Rgr39EKRRoGmFFc/SvR7wcMcJkEKTcxWe0ejnf85J1w4WUpni6Veb2
	g9H38lx9HY5v+O/Sx/6vNt2RM8HqVDD6kVwJichU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645761385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ONKtsPD5Ats+4x5aFHJixNp33ZD3sTN2JL/0BpsI2Vo=;
	b=aR4+uc82RBOw68UBqDNIbGJDWpk9VWZ5TkBFRXNXcR1UMvUfHRYrUMXl4mWo27CM
	7OSGyZH6VsDnn+IMuwDsN1JpGV7SBkQBkcAdUvkenfUkzAWJ+dVUSKGCU+JCrErarMg
	8PBgwNn2+9WoQuW369TPU9I9HntFhqOKiiqCeO/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2f05d139-437e9266-434c-4104-b09c-cfce55f422cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96c53f47d35ca805def17e28c2b75f1fa134311905aca22ff1d832ee94170fc7
Date: Fri, 25 Feb 2022 03:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645761384
