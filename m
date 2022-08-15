Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591AF1C04
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660573252;
	h=To:Subject:From:Message-Id:Date;
	bh=GfQlkn3fzu8xzNNq65GsBOLPgpDYuvr9+X+4ijJ3fGo=;
	b=P6gAQoYQWcYpZ7SxHeLBq1RFc8ZDx3Dr2cCsgsC1zMnE7GXKNmqp0J3ub9qUnPxa
	4tHDwkofY5LdzNPDq6ibkjc3iC4/iKccTt6z6iduTL2Shk7kmd6ro7jhQm7zkkgL9BI
	WHTY/eCYN3bE0AZqTRAJ9h+91qnOombKDBcsodhM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660573252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GfQlkn3fzu8xzNNq65GsBOLPgpDYuvr9+X+4ijJ3fGo=;
	b=JYw8zqVQHmiRvAE6kJfjCVMwjEGif/DbY3xZXP/Hz63Ymz4VplrJTsVTp52xSlKm
	1BSCq6rETvKwk7s2k6VBBpXu5WD8GAtApfnJmXtyVOhUZOrV8LIlESqFuOrZyQd+k/k
	Z5aKIl9QezhNtgBTjhFP5uEqh1MjWLhCmEoom96A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1e0fbb8-397a6e70-92ee-4cf4-a235-15bac7cdf2fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0156ffee5b6742c7fba2b34c7870c9652cb8bfa77a5ba7f4d919327cc5ae8d19
Date: Mon, 15 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660573252
