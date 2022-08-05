Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C697C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659667852;
	h=To:Subject:From:Message-Id:Date;
	bh=ZdUgV64MHSI6WWc3JNIJi41+rT2o1k0pTWbXBjIL2EY=;
	b=HzygqFpcwmWkcy+9p4KhGyPS1ZPF8ZlyB8ZH8zMKQ1nrPrivWptrsTj/QfOQFjYP
	ToIP0CqbB4zU5J11+V0S6i5HBBQY4ZZwe4RKvIby2ilzhZMFXaTWLi/YTTniX49cVqW
	SNy5SYPgHuOUdCmVyusPBqjFPfL/67t3PCxnkAE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659667852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZdUgV64MHSI6WWc3JNIJi41+rT2o1k0pTWbXBjIL2EY=;
	b=ZwPkdlXIVGjj1DzDQxMrEDGa0H+Rp+wGWa6ALRJox0YCDlUUKG1d1biOhkj2a2x7
	gFb68ybl08Biu+l1bYCdT2v2jRCOmswoQZ5AyRMAuYVSh+pLwKixI+igedc0h4fjYUp
	3DpZk/1ssfLTOq0g/bRfzq95oJvGrEffw3Tg3X/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826be9ad0d-fcf4f179-ac50-4f3b-8d52-39dfea49beb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca47c906d79b97ac9931130d6718d940c6a34af242c319cf72a9109dba1be8a5
Date: Fri, 5 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659667852
