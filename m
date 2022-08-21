Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5D31377
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661085652;
	h=To:Subject:From:Message-Id:Date;
	bh=6ZXglwIZkt7DfoU7C2hlBUjUw6ky2q/1bBOJsvL1278=;
	b=DbIL+7w4SZHHv9GN1PwNyBjqI79a74U2m9oPj/aXCRiATi98eecef41ebbxlTPOx
	rT8xJHQed/9ZAfXBiu3OK1LHFvFxgiqps87dkpV4W9UZSDIXHzi0uC1gWtBToqUngpp
	M1WaSEIoURXOtsnSubdyUk+ATK8AHXL6XPUEnzoI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661085652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ZXglwIZkt7DfoU7C2hlBUjUw6ky2q/1bBOJsvL1278=;
	b=kz6N2NziQmzULZvtfD1vUvCAB6UbKYS+pPRL5JkN6ZNt4t3AHDTpGZbucnbgI1Ns
	/VHUchqq1ZciOSQ28D7blCNwwoKUa8E4ilChl8oKV/INFFfj8wxRf+jSRA9snQKM3KV
	GvnAMviCIBlC7t34jh7UEiJxN3GqKx7VbJDjLLX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c06b965b-e8c6eb65-0a4a-4fd7-a527-e5100a6e1a0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6190e41bbf22bf0a12accc57ea8f3757fa1e6493547e77fabb4b3fafa8ace273
Date: Sun, 21 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661085652
