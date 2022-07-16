Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248FE1844
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658005012;
	h=To:Subject:From:Message-Id:Date;
	bh=ibiHZ6M541I1fJ5P8f4TQHzAOO7HUf7sTWhcdEk+ulA=;
	b=Km3ID6xVrpaJAw+QVJGbff3v6QXOAcllykZLLFMqIWXGLqLn1TWgy0EmE0zf2SMb
	f2Pe+2uAhi+CzZXUHR7Nkz3ObkoF+cXPd1VSoD0qKfPYHjUH1P9LwHaPjN5fQ8u/RKp
	7hXhvpuM2eE2aE0AWztQPIzFxcliNU1c8dPKTLAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658005012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ibiHZ6M541I1fJ5P8f4TQHzAOO7HUf7sTWhcdEk+ulA=;
	b=O3atnNxuPwTSovUNXbF7ZR8tBaXIa3Q17xPqYKIgVP47RxTT8NKGEwHUjvsJX2D+
	qUM9PNupW75bvj+4J8GaiXsXymSUH13pPkNE9tRT7ZIIYcYIGu8+QPDdGCLxpzcrV2l
	rA/EN6qiPhxF4vaEa2971zOpWc4c8yXXyqv04RtE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018208ccbf5b-ee553d2e-73df-4695-81dd-b81e42891856-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3da8882809f1720c147ea6d2ac45137252ce8c77ba0b4e1a5332e6c0dd012785
Date: Sat, 16 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658005012
