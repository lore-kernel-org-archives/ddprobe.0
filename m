Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733CB48A0
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646732184;
	h=To:Subject:From:Message-Id:Date;
	bh=nPoYaVQVRuYF+GoIDjDL9zOStgTWnKRynDJ4LOrN3kA=;
	b=WjxQlB+S2sBbSdtcgHYJilRlHztN5eA8/sSmkBw0+IB5VVrABoRac78PVoLTRj/t
	ce2XiLlKVJdYmjRutWsyTBomBqAXAp8i1G951enrpFtS99n9v9qVV7eEGVB2zVbmGp8
	W6GOVDrJVx3ZZ0VX1XUMJcjcssAg3tyNID7rZKbk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646732184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nPoYaVQVRuYF+GoIDjDL9zOStgTWnKRynDJ4LOrN3kA=;
	b=ejXSox+fOQIetomZXTzlmnbYmt/2E+/948sRN+O1mcjJSYNPsNr+rpyryN5F9sZn
	6pFJ8WyVtXoqrFn2/pgi2ctrpQE+hpujDv5uxTa+qyn7td92quELp8D7KaY5VfOzUXt
	Szrg2GpvNfscMeN68KZ3q5vKvW6tmEbkOgcyap/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f68e30cbf-7e5072ed-d115-4296-904a-0da3900e72f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfe9f45c09ce61ee0d7ef3cf1f2e4e3dc62b7a56b1cb8ba398e68f39fbb30cb6
Date: Tue, 8 Mar 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646732184
