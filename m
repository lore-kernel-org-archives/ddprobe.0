Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B9D7E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 11:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648206898;
	h=To:Subject:From:Message-Id:Date;
	bh=SKGvgUsYgOn4gWZew3KAYXXamRngRq9eAvfg29IdorI=;
	b=HlE2h5chqGy36z/mIK+at2AxXyRk/LdviEIYYvgU8HzgI7N8oSphqidBPlnvdtCf
	CmVKAMnhDNjTVX/J3lyYdcc1/obT9szhdGOaVl+adtC+vpFYYJYoS2WoxW8emX+n7G7
	we2BNOBdwi+1UxX40b7Lwp/cacrcukqHetmB/nTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648206898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SKGvgUsYgOn4gWZew3KAYXXamRngRq9eAvfg29IdorI=;
	b=A7QqFrDO3dd5XkGNL1qgYY138/JDxsdsbs1pI8nsDIbNEPvbNaWHUPVAdgtJWIvP
	QD/hnAFXUvYAu5k3U1LQ7m4MgDLlNGZyJMAEOb+l34FZHwAcSvVrd2ngPpmCC9mw14k
	roI5z7oWl6qko0HdU8n4lQAKnAZgUajwXDa5WGM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc0c96454-5ec50655-b4e1-415e-8a55-913af390e080-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c67e9026f07e4ca08bbc663ca1aa2325544548811da25c2751925953c776b852
Date: Fri, 25 Mar 2022 11:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648206898
