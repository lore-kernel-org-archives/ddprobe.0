Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED417B
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645430185;
	h=To:Subject:From:Message-Id:Date;
	bh=q7sz+3qF67NJFI5AUsXA9i3r5TX3tAvb8yKjti8pflA=;
	b=jbmbsKffhR0b0SltRyHCmhYYc4r14iS0vgj4CehsZAYBcxwVMQ6xHpjOeW9UYFzD
	U4LxjQdRiPB9uVCbvvnml1l516THY19KqMeuDbFVWARF716O9R0dOKtjUazJovDl+3Y
	h2OZqJJrGRSLt338XVOeQ8/OqVWpiHwzDplxWIPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645430185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q7sz+3qF67NJFI5AUsXA9i3r5TX3tAvb8yKjti8pflA=;
	b=THefdS71HTvnjL1gPKv100T26NdiqdTu1hs7OtXt1Ak7L+AI3nXoWGPy9YhXwzx4
	G6wV5phfGXwsynJFqU7q4khBXFJ+wIEcgSnupIrveV5A2dEXYX/r1sgkTClc2GGJmjI
	3H0zk1qYpQ1SrmcY/QEYlgd4GtdIRKlJlNpQRZos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1b481b3b-991ed02f-143c-4faa-9ba9-78f0a42be4c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfca8c79654452ee9e3b8a342bfe36123c037fa7b936f62a60720dee48b2e0ed
Date: Mon, 21 Feb 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645430184
