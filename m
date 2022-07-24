Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009C43D93
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658690812;
	h=To:Subject:From:Message-Id:Date;
	bh=GhxNF0+cJ63Qc4uKw8JnSl1efufbSzqI7GQ+4/Gwa04=;
	b=D6Hm43p+BtQrALVGIrPiq4xrRBTz5BhyDkNpsTq7aGurXimt/JwPgaKHzJ79UYw6
	sl68GJ0Fp0KzWTC4en2oiAAPoP5nPCFDpVLo3C+Uq3XZt50gkqMpRB63Mrwb+V7k2VT
	GrJQ/xYKXtDliN0x4YZ8t+5zEPuxM4PzK9hUdjXY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658690812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GhxNF0+cJ63Qc4uKw8JnSl1efufbSzqI7GQ+4/Gwa04=;
	b=Xke203E0ae7M78izFbROF0bFWeXCdCThiQhAj92Wpfz46geiOEenyxz6HQXu07MW
	Q/yjcjCqfG40rTYGFKQQIYbJbvOAB6SmxEHTSSa44S/pVyRstU3am4Jo/5tq5I+MUPc
	kHwkc9Zzt6dW4iUgYs06q5mTYafpinpe4knKXASA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018231ad3968-4c89f485-163a-466a-bcbf-ec15b3865f0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c89ee3926c8b7f9e7713383322dcc297b682c6aae298dd35794461c9dfeb8e8
Date: Sun, 24 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658690812
