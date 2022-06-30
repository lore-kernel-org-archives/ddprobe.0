Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDBB36D19
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656604612;
	h=To:Subject:From:Message-Id:Date;
	bh=MLb8luU18Zf6//k13rNmIIK64Rs2A5f2+OuBFfB8QCI=;
	b=i2MKLfDJ3AVeC4lBbp/TzFfpTdWwAiF/Qef/CosAsA+KGIGUeTMtL3qQyrF7wkTk
	fMboa2JqvlpNMOfRag6rGPw4WLZzOa1tem8aIjMD424YLx9n44EBfUdiINgDmYWM43f
	+X+cUHaeFRK0JD7NctZwvof2cp8nxJvIsEFq/WIU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656604612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MLb8luU18Zf6//k13rNmIIK64Rs2A5f2+OuBFfB8QCI=;
	b=VYsbjn7eSNFdwTiOQmi3l0ZVWrilJ7rNNwuEd798vSFh4QyCU/Ef+S6O48877Vp+
	zgzIb1q4U6ObcYJkc6+NOI1Nx5pbXNxUYvAxaLdbsI7VuYVmWXw5oj4B7EQBhIEFJws
	7VV3FoXE6YrD+Skd4nKGL3Rx9mvRmjpVTzGwAmeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b55456bc-3d113759-c5e4-4d66-bc9d-5a0e0b78c88b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e63b744aa52d0685baeb0f76e05d795377ec16f6237b99200c69907e9db7a9e9
Date: Thu, 30 Jun 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656604612
