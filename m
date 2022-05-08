Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DEE10EE
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 04:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651985758;
	h=To:Subject:From:Message-Id:Date;
	bh=c2pqE6uorHJ2E9151Xh4OuD3KIh1aMX2mdoikljK6R4=;
	b=UtUNzXLXCEagaNAb/hIddx3oaRTAhk+qYXPep0o+23596javojd1epVgMXyLC8C2
	WRPg67xq9CSX+aKTH/Bi5wWwdsuRIkraeRcg3TIKokxqXRlTEcPaPnN7QBeKCqCpo0B
	R1S7Cp+Ni7s/NUj2oprVJSabIJ0R3S4PvQDpNAOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651985758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c2pqE6uorHJ2E9151Xh4OuD3KIh1aMX2mdoikljK6R4=;
	b=MjBuNEZ01q3d2CuhUyiom7z/Bqd3VL0i418fvVVuGE98eXJUgnCJt0Phr/RLagtN
	ds2Wtxn1oxEaYMztVvwNWYX09TWnbVX2Ra7axhj/vF03V2p3Ht+zXIcVEkSPwJyo2So
	YeBT9h6lJTHD60j/01tBZkL/7jXwHLJB03TRL7ro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a2063861-f3cf1aa0-5147-423d-979b-b4e0ec8c42dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c51f66adf859b11480e5fc89873f53ec9012e30d255c9e2589a8fb38efba0124
Date: Sun, 8 May 2022 04:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651985758
