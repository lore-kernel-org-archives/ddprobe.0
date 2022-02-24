Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5410B7B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645669284;
	h=To:Subject:From:Message-Id:Date;
	bh=Kg+u2jin1Uh7e9BtlNL7FD0MxCF7XKcXHAgcoyDqrfk=;
	b=jaSJ+Z3+VvDYkKfPgdhbCiF8soR2JG3ufS8KjwNm7VOgpTi2Gu3LAL4Mgxwl/pOP
	AqpjcPP0rFdpO3kTI3Hcc3XR7KlNZ1yqnUChiJO9F6962eaLp1RdQj6ogH2SNV4eyNS
	izgE5IcoP97Y3Jpn88VbKDXXRUYbDqy1MZ2H/XBo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645669284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kg+u2jin1Uh7e9BtlNL7FD0MxCF7XKcXHAgcoyDqrfk=;
	b=irYhs/+RSzwqcOvWwD9XPMZQL5iqEeN628ZNVTP0wYdXO54ypiU4yRBJEDhl5H6f
	P8plsoZr8M/BUzVio6OjWHZTiIfKu8mMohEIip0zNVo2/P+NEhnAWUI++6bXJnDmSU3
	oc19au5WIgHGaRXJMRNKVZLXTPdVxyRzHyZoE7fI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f29887b88-dbd7f3a7-fbd6-4102-a5d0-7375cb85bb0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77966a9689a240de85a6fe7e7ab9dd5a07d29d13e810f2ef1639b22ebdd388a5
Date: Thu, 24 Feb 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645669284
