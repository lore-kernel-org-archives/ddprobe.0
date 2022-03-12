Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8902B369
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647084085;
	h=To:Subject:From:Message-Id:Date;
	bh=PK49H5QPYeRmLDLUYdMyi+4FUq6ti7Pp0nSUoF9CqIk=;
	b=dMQkRA/2wBHRUr+bIxv9Wf3r1coryjbTZ/X2Ec5z3HOuFtzUTPZl4DYII2RhkfkK
	1TnDEn3+DXyx3dBrSZ2ahilL22P5cqSbgPmeTyWceRWWURtB9yMqLT3hI0VLLRZ2SQ9
	eoH7bNFb5uXnJCTewA1D0fU1g7IlpTh1Sh+5rL/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647084085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PK49H5QPYeRmLDLUYdMyi+4FUq6ti7Pp0nSUoF9CqIk=;
	b=cB8nxlZApkeCFONSndUMIBrtRWq5eJvT49o00xAw4qFxKW2eQl2ui/8BfBbcSfgG
	RpSIIVylOTkFC6O8EHNNO4CoHeY+To0h4SDOX5ffWEjsVUWkDYuX3LX2FAcecrOyMGM
	snovBziXEJkQS6yZzpT9IuFedWSz+XNavCCSPoYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ddc9df3-ed206d48-5b32-4601-a92e-726e1143fa3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2334f10600d29d5724fa6f12d954b29efd4fa980c9614c30461b854caa320c9d
Date: Sat, 12 Mar 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647084084
