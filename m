Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759097E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647066684;
	h=To:Subject:From:Message-Id:Date;
	bh=+ESfk134rEYlFiFD0cujEoM/I+k/7v6zLdY1OgALwgc=;
	b=KPxa5ZdfFPU1z44ZD6I3z0WhG2RhyWOAIb1UpaIAtjL8OvlX6GPObUImA/IF8Eau
	cRV1TAOpnemMkKASKTxeHN1qL7cIobi2BvxkHWg8FJD/4ZrzD5dyUZOxgdIwkAa2cNe
	uRbM93WULkUu5GRAa9TNy2TR85V0j/38arXTES4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647066684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+ESfk134rEYlFiFD0cujEoM/I+k/7v6zLdY1OgALwgc=;
	b=SU2E7OxX+AsBd6hwvdlWB3a/iiJZ64DlmO5MlBHSDOjSCniHvtLthbRIS58nFkaw
	861KYwZj8Xkwkc8te6OdZguFGrI970dhNVJTR55S8RRPUZ2zplteQixpOnI1fq0z7nC
	ugZE3z6XD9w7BSGpTK/v2lEc5Xja1EcotGzbbzAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7cd31d49-e8d37a9d-35d1-4bae-8064-eaca993e764d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bd66c850e01ad90e256bf547d267098854cfc892c24fccee57faf881e9c0066
Date: Sat, 12 Mar 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647066684
