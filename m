Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F5E7C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 06:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645857085;
	h=To:Subject:From:Message-Id:Date;
	bh=qdl2F3cspEPPkDOEmvrEpA95FeqPK3dSsOMwBqIICSw=;
	b=N/7aXT74Y/zpve7ukIBPdXFbhH0EK/Yot6dcrVHwNSeZ1X85qcM6x8nldlsKjJ7T
	e7XVyxKHvsoCIerzUhSHGuOFFXDSTXgW3EEh9kKyrmhyPbw3IT0qZefDJTK8n6gmSQJ
	hyLKmb/Y1nHx4eEKCMgxOPOBSfjmcozSaRpIJdQQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645857085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qdl2F3cspEPPkDOEmvrEpA95FeqPK3dSsOMwBqIICSw=;
	b=P0VEZizm+jzIJzEsmzmckMUVEDI2sOEiNqAkIrF4PdJTTBphPnTd3XF63hDqtxQs
	yTDLXPRk1oNXSZ/mTAsU41SYNIYrNy29BnAr7Ztw9s/2HHXIzEtcAU5a9NkE+Lm0qkg
	fVJEABJc8k7qlOOZzkLFnvQVRrpMbsgbXHcmwQNc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34ba154b-fa4de4e8-f96a-4049-bc34-64181651f2a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 473f5cac0d5197431e50b493fa57df543561c15f085f72485a0e2419cc271b5d
Date: Sat, 26 Feb 2022 06:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645857084
