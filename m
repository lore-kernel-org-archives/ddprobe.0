Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F53EC2
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 09:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651138378;
	h=To:Subject:From:Message-Id:Date;
	bh=00djUUZ3KWmvg0yu0AteAwpGVr36MNSsmWPCEBv+dYU=;
	b=lBaTYkFulmQ7AIklxj/pNN/cFvK9pFUHoi2VZWIPzwECAvLN1B0szUvkZd3rDYEa
	UTuIJ/wBPuGAU8ZHNLVsWz1ojmUxVOn6zT1wVxjW3ohZHzjThh6ZRXU3BgykrWT50l5
	I1GWQtWL1w13OwxvmSDVl3HgY0VVm7+7wSZdws7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651138378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=00djUUZ3KWmvg0yu0AteAwpGVr36MNSsmWPCEBv+dYU=;
	b=BqZ65xkdSsyz/tocxyXzIaSPxcVoAB2Io8a5kXC4/kUxKMvREsMhvmXsafuOLRbS
	2qg0hHgoCSx9bLtF5RUliYwox2tB5AMTjxpAzbfgCIOsqfQJVF/89mwqv/NDfbvZO37
	n/6PRbnPZ9H/ng2dgQF/eiJrFp7cHVVh7T6TtEmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806f843a25-92ec59d1-15c9-4734-82a5-d2a651e4561f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cf42c0743dabc565a319fd9c68cdebc6abe490a07ad6b73a251fc75287f33f7
Date: Thu, 28 Apr 2022 09:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651138378
