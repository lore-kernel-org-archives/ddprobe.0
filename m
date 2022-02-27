Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EFA52F2F
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 02:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645927885;
	h=To:Subject:From:Message-Id:Date;
	bh=0d2v08daSJMEj/Jixk1EBAXH2ULeV7iQJ1c0geooHR8=;
	b=RNN2t9apXC9VmdfPq23b5VC3QiJG939+OIIhSxnKuZustf1MTEqrt6RnL7GkhlDX
	rozCAqe8NmewPBDDF38aCXNn1y2NuYaC4TqktRaWrNAtsm3luSz88+zDWcndhYFssux
	W5QS9iDRAEooapnxfBOdoU0TBS1S+S2UF3bcrZQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645927885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0d2v08daSJMEj/Jixk1EBAXH2ULeV7iQJ1c0geooHR8=;
	b=cbi4PI4XBBuuHeB30QgHkbPQCyvp6szCFXJeDtMMqnX4ScewbOpFwxU8tjYNwBMw
	2p1Cyh192GP1iQkg5IknixbwNap7/RDjviku/68px0RjNI+2tH0XYlT6SLKYzSR2K2D
	Ugi/ALPpkzKNtDS81kCI8mVusYiC6gFzJBIpOlRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38f2683d-41bf0a26-dc4a-4bba-b920-031427e4ca38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43e2595df89fdaed74e84053e98735d6cf5114f35434644b6ac8bf2c8ea803a1
Date: Sun, 27 Feb 2022 02:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645927884
