Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B913A3B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 14:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651069438;
	h=To:Subject:From:Message-Id:Date;
	bh=MFUC6clVOoSeWSC7nVUcXJjo8iCiL1LkXm0T7gC/n9c=;
	b=byFrzpys9QKfjTt45WOdmLwrYxBkkM+wmuRBWkbJ7yUPlG86QcklprpB0+kpKfA7
	omO3aXzjahnFgSOLHNybmIpNUnms1grHi1e9kX+0XnY6T8PuO2yqM1Ev4p7ya7QlCDA
	4YYYvHX+UqjWnhqF2km0E0m7BqQzU3/RhVUdcMXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651069438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MFUC6clVOoSeWSC7nVUcXJjo8iCiL1LkXm0T7gC/n9c=;
	b=jJ3bixlJFFhveBgJFdkJ29NvknQDQc+EqUN98K/G5MEzsnYCS3gkAa42PGquixBh
	1COIbrAjl72GYBe3CQlY85/AjP4zKkV36r2kG2/e0LVCOIfoi+7qXdgkgKk6Mo9g8dq
	qwHehh2lGDx78lbzwaAIFeiDB8RlaEZkoX1iYscM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b68495b-5a41662f-7504-4742-9c89-2b90fec0b6d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c00e82ec431869255cc39356afe1251951e5f197b1dee8838210e43e4ed187b8
Date: Wed, 27 Apr 2022 14:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651069438
