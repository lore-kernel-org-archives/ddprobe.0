Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A354836A
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 03:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646278885;
	h=To:Subject:From:Message-Id:Date;
	bh=QTRpx1mJg+6j/PI5BSJh4cWCZJSl3IOEIB2vSW8cfXA=;
	b=XqXT2rDh6mahDcy9mMF9iTiTQ4AEWr3vy+Rzh1JOOpsIO2H14HenJxYJWOvurFRx
	a4NAFlEJkWA4P6eGB0hYUdoaNaNFxnCSMhBLInshojPKczD+CFgEXEOnl6CVh4tdGEU
	Yhyo4/7Ln2jWD7FYPOUtvJP2bq5FZGsyY51dFd6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646278885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QTRpx1mJg+6j/PI5BSJh4cWCZJSl3IOEIB2vSW8cfXA=;
	b=eNFA2gppmvVCfatxTepRQCG2/ojlaHZhLK2cyX02N0+MEeXDBe2UzHK9KBLMNAD+
	xhRO91lxBiKdDVxVRdV/Lbs6Vd908JcjT4bt8C5ABMmuBSAc+7DoMXuluuQHjJ5U8oF
	ehC7vOJZE27eNNcj7I4bFEce4s4J+yX6boRK5ku4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4dde3dc9-62a212cf-36be-46a7-87de-2f767e02ed3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8d010926b9e8a23aebbd926eb532923a3d6aad5b67f28b8eb97cc9f9255cb83
Date: Thu, 3 Mar 2022 03:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646278884
