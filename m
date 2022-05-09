Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A361FAB
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 13:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652104558;
	h=To:Subject:From:Message-Id:Date;
	bh=QoVuyCFTVJA+4fjCHqmTdU8KnPz6LPYs4/6kxQ46uDo=;
	b=focsGBZjdWSNAggiJrmQbyI/JWtb5B8hneWzR697QGHQ6k46s2aUFv1yqfznmw6K
	kctBVBZiIpNTh4M/X+eYoa+Zl6MzCCcnhQsUW2VJEZLXZaZDuoQBaGBfxcMzN5JhK2w
	b2BxiwUnFEDucUuZ8YidyS8b8Hw3XQaTkbX8TmdQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652104558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QoVuyCFTVJA+4fjCHqmTdU8KnPz6LPYs4/6kxQ46uDo=;
	b=gwaOxJu7RiaTXLq40SI/I5hJAud6vgrp0NsRv/fp9joo78Vg6fqLjjFSjT/vx43H
	a/mgdxF06dAqJUwFWnFoWMJr7asEShWuzyt/S116BkfScZi4yuro048On3BDSs2z5PR
	yIuglDGy+2HBDQm/xEY8AwGPx0+2n0rgkLbKWMbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a91af768-525d588f-4781-4be5-8b09-fd0b70582e72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a690a7f3b2a18554c241f786605cca0286fa48a0d997b9373eabd006b0ba460
Date: Mon, 9 May 2022 13:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652104558
