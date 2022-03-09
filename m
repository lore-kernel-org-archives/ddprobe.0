Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FBAB7B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646843185;
	h=To:Subject:From:Message-Id:Date;
	bh=p9vtm5xxNhfr//z3r0QxpmlWtfJtabH9qyVDVK9CFK8=;
	b=SAul3FzGfoipydFU/YCeD6IMqTwR14y3hm3ifCdzws5S0jwMhyu3Stelb0/2R92o
	AWSx9TdXhbK4ufAzDCvRCX9a3JdIN/9zrAYlcNEKVqPcVNAun6jXVZpMtqnP+RB2qLw
	nMrPiT0EbhaWZUPdJvUiCEPbPs7tiA2N8E82vQeI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646843185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p9vtm5xxNhfr//z3r0QxpmlWtfJtabH9qyVDVK9CFK8=;
	b=L/cVdi1zSpd+KpjrluUqPsHxPMJlpyNJLcOi+QAZYgPa6k8RLURXJZ9cAYeULsMp
	7UbbcIBX+URwsH3zev0wC6NxV8MJ1sjIOTJ4yIp8dUGRlzKR2hlzMLNncxLW/8bvMpU
	kRJxRrlmSLdsw8H7EPXyURJ/GE5bgy5odt6Fan0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6f80c6da-2e1b86c8-1385-4d0c-a4eb-55951a7a5e2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d4054cb7a2351a88a71ea955dcbcc65cd38262e6c4242eb8a8dd60ce073ddbe
Date: Wed, 9 Mar 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646843184
