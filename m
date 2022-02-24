Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D87C7B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645664184;
	h=To:Subject:From:Message-Id:Date;
	bh=utVDfgJDf2ANI+trhRgo5UIlTisy2XEL6WVPMUIF5Uk=;
	b=bamjlMEYVyOdTTqLmleP2tO9tozSzM/OmdrdXtZDWHiTIJI3CjwOfjY4MgkE4T0I
	2ESPlfggep42CMYSeMDlyMCn3vaG2Si9FluqmpvaRv3lEkEpvGbXONm7Fu4fJgFOoY5
	QZ/xAPXi25wA5idwRiVSM7bV3tPY97QLOrx6fmBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645664184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=utVDfgJDf2ANI+trhRgo5UIlTisy2XEL6WVPMUIF5Uk=;
	b=OP6E1StVGGBixtaET2+ryL5LF11gHiae7jqTOG+MVS3adKh5T9mKb6iT8BSBbQlY
	j6YVcKYpW/f5iIezMJ8NwZ8pbS+1FukV0zbcFSW4etNNUZru4yxIzo3nD0a2FO10djY
	nDQJuqwqyOztrvxI64ZzR8UXkYqtDRjDVcEg3Jp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f293aa9e1-03e51d2e-ec54-4d63-95f8-73db5d2484e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d20e7194302f14b61b6091d842530fea004be94b50ea9725551886d34cef9b3
Date: Thu, 24 Feb 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645664184
