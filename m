Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D62642
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645612584;
	h=To:Subject:From:Message-Id:Date;
	bh=y5Rd13aFS5fod69AMZzYMmdSiu6D8DjmCY8UspfkkBU=;
	b=fZMtTdhI88bZau4LSq+KIEs5s2/bB1nJR/LRCR9OyJD8BwVEr7WoeTD1O58Ne+yG
	4dMgQQ63kO1J7wX2bJaD4NOu/WcE4IsjF7TEEaPcigiZ4VWcjE12jNlAMHLM3O3cCeH
	2CZZVK8mTOP8EXS8Jvgks/EwKMoeDLz4KCitZhN8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645612584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y5Rd13aFS5fod69AMZzYMmdSiu6D8DjmCY8UspfkkBU=;
	b=KZ+Y5knKvGHmVGHnXKLBLLnwFZDwaAwfXO7CmMPtFNmwafS2HxJGj9x0b1MIhDkA
	zaHOd85Avmcl/X2+Xsob1dh2LyKLE7HO9LCyeyuGcivkCUBqzsKyzKP9RcQNUPugblK
	omHnigIpDVutHOQxtofSboUpgGF9P3zY1R6ZUv7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26274f4b-b3aacad6-855d-4e5f-b517-f142e4310ef2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f902e0692800c8499a8c2e3bdd8010cbac8b821e572eeb2486e7e40c07d01dfa
Date: Wed, 23 Feb 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645612584
