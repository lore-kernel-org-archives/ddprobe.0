Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 964054C99
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647625885;
	h=To:Subject:From:Message-Id:Date;
	bh=LFqFreFEAOrZJ/VVPPKyv8vlgFNAWGm6qqiizedUUyo=;
	b=dnR0hVVFae8Q89hB/TDecFp4/Hcy6WLCgJv9B5R9LKBRNw21ZrEEeNyMWEa71PAm
	56GTYCYRd4BxucCtOJMhdTeHnu104+Dp4rvbpn/QWxF2Jcl+fOcXVGIQhA0jzt8X1OO
	RbIRwSeayVXbRSYbXvEgzQJfPm1ojIl66ainAwIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647625885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LFqFreFEAOrZJ/VVPPKyv8vlgFNAWGm6qqiizedUUyo=;
	b=OmhpgBiP4yCq1LukmqpRzLtzroItOV2PAit0m9gXB5liB2D+NMaRAVLA77B1Gcpx
	FXXufj2gZzK3NN4LeAFZoQeb4jdtTCU7epSVnc2ni0+JRlz0kV2hWHOO1XFc6818hNG
	yEfPd52mmRmGW5fgms7zth9T2IsGBM4KK5I+weLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e27d443-435f8368-8f39-46e2-b553-169dc7206766-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 893ae99a71ca373ceca3e9ced654cc9040932ad4407cb4ce5fcfaf41cf2f39a8
Date: Fri, 18 Mar 2022 17:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647625884
