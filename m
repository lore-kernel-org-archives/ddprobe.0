Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3142D1847
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 04:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39C2C433C8
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 04:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691035328;
	bh=WuwWK5ePl2tXn9kYHo/wAZSQlS29vmB9DnJZyOMOtyw=;
	h=To:Subject:From:Date:From;
	b=Buw5NtUkcSXhlIRLRst0qUraG++c4ndvdSLq5rSTAgezhmKwxYrlRxm2JkIN6/7RU
	 ydbsJqugsfixQoARi+AZZenQmgrBSAFGLnwferdwZZw7wQVSqGuYPpsDloTx7mSNK6
	 4+Vfga3SlFNqTH5YG5u0IExj0Vyj3d5tSH0a0RsPtLNHwSXwecCe8Smp5B2dXwboBs
	 ZMRjUdwKVeTcGsjFvJyBjkhv+tIjjMq9hMo4Z9te6Ol05MrABjtmXMugcZy80NY1PO
	 qQvv77aPDjEesGnUQe1ItJQoddBg1vfvz40elkBr+5NrLGuShjg30dDR9hht41aOHM
	 qe+q49crc+vMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72A8EB64DD
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 04:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169103532867.26603.8476631315382277009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11b88bd046638deb226e037bb87d1899e1aa917e44303212efe417ccdb53cd9
Date: Thu, 03 Aug 2023 04:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691035328
