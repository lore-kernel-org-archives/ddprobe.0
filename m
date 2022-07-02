Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECFCC1FA8
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 20:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656794812;
	h=To:Subject:From:Message-Id:Date;
	bh=RydSK5ZcCS3L6dUwUCZWVZXmXFXa4fnfPMTVAlrEeyw=;
	b=a5h+P8WoRIUaZLc5a8xIhRR5Q/VBfykyYtvc3/jrv5wm9XThh64VKJOoIKcbh0cf
	01kastG7hiIYpbYAfAztNZKJQ6+EfbWtsBPxrr5B2Qsq/gMhgZL0V/mTmQVcxCuxbRW
	aNBQ02OBU64Qilkff8rA0jY45YFEt0E5dGLAc3v4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656794812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RydSK5ZcCS3L6dUwUCZWVZXmXFXa4fnfPMTVAlrEeyw=;
	b=N2ZslPKeK4TFlT4uaaNmfjQ8xnCG380eA1o++dGDVa6VzjDsXVVjqvqjYukkKG+M
	5lyKBvoTXGagyVaXoXptDjyanmCSkZYrV5jG05EBsbrKPbko+9OcFkgJKYpZh4wdSyx
	aNuxFpFPafN4Mu9ufXeKSdB6nG1mhFf8XS25HJAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c0aa8f73-2921eb1e-aebf-4341-854d-642398bd3001-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e6d4cfc6ba081fc6995f3f8bfd8bfd08f2f584073fdbeab81b1e83ef5dbfd80
Date: Sat, 2 Jul 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656794812
