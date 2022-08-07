Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543DA1FA3
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659897052;
	h=To:Subject:From:Message-Id:Date;
	bh=eKsDRqfEBsQ/5Xc4SQpMm237hMzL1SbDOd0dMNw00f8=;
	b=JYN9K5UpulnayDhSm93wuphBxLYWc5JCNcn2sw8pNJLIi/2t7HQe3bOoT3dplp7E
	APQfDrM9Gg7S8Cw6bRqi1WTFdFK8zwVZRj6kVNDcO5AOT7xB4JJN16nYPi2NqrzKGVC
	f2eDrkX0I9nh3ooqoMK7yrpV87xADqruFTSQSqF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659897052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eKsDRqfEBsQ/5Xc4SQpMm237hMzL1SbDOd0dMNw00f8=;
	b=VpWcLlXUDmXi60MVMzIKz+ZD2aLJWxKGzdoekWMjAETTNpDA4oiJ056cAk/31Mw/
	722jRWul2P2bldbTGNEmiT36LLdggBNeKxcrdPY7jc7XZTiILTbjV+r4Y15ECPzD4Ow
	Z5VvcHN78opTpoeLcRlsFpSEh2lxX9S1W5zSNjUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827992fd91-dfed63d2-3e14-4e9d-98d5-13539e9c8760-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cae09b7e92703e2de08ae63c3a6bfcbb357c719391c201765550c26df3897241
Date: Sun, 7 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659897052
