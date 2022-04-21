Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000EF3D6D
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 23:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650584518;
	h=To:Subject:From:Message-Id:Date;
	bh=tOp3TbVeWbnG3nvjoZWwxSsz0nu5IEJSdtyrmXfBXfo=;
	b=EKE0icIDyIJ33N8hUtl857VMSJXkPkDoZVMZZXNkVOrZnRMr3Y8vk7mbvBF2ObMB
	LuHmKid6Nwqf4NWR3aN2JaodpQCktzvaCq+Ed77tzklb7fyJkvrUOCzouNKwZStAZkO
	xHvNjY8awKqHe6Xr1X7e4EL9q4aXACzsOgizZaTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650584518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tOp3TbVeWbnG3nvjoZWwxSsz0nu5IEJSdtyrmXfBXfo=;
	b=NaByd37WOBBn+dYd4ht1DHBPIDsE4SbPD4Ed6/hZiQEubrk7nrNhZ6m83YsN+lmi
	NN0ZGAlkVDGagw35EWeIWW4cATPcEhbFFPJ9q1wXspj/75EAUWCuuy/WxYfDTlJ+jGq
	yG/F8/Z93rw5OKJ8wJ8Zx9At3ldrEw5o5pxrjcmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804e80fe84-4397dfaa-f283-48dc-9197-ed9b33ffac63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b9fdb55be06830eb68d2e8289284f126dd9c7ae96551871b082d29c87998d8b
Date: Thu, 21 Apr 2022 23:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650584518
