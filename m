Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4022F34
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 19:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653850919;
	h=To:Subject:From:Message-Id:Date;
	bh=YzCkE4nBhhCOiItp8Vy8+FV71fj7G8x4t4zHkv07DWc=;
	b=XMcNQtT91nXFrf+mpaEvxqmkbfK85oiKjCgAwc/z4+t2ZGBfUmrrRSsXAi/9XaE3
	iEsOm+3+1TjHxDOAfsCd0KJuBWTzBjjFST34GcyiC9k2YsBlF7DM8KLVSZVXQSkUBRK
	DYBNamdYwsTkrqnyGPyO3qklGc6+jxnAl88RPNFU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653850919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YzCkE4nBhhCOiItp8Vy8+FV71fj7G8x4t4zHkv07DWc=;
	b=B+962/XUZDiUJyCjUl8JuYjo5txtPWa18A3GJvBSvao5jtSMcyB77LQm7giUuXBQ
	SyRPZ1mvzHZOHMszYDw6YP0LhOhDEwUPgWSNBJiVnvr0K7A2GYh1U/6GzOX/1KDy8EL
	DagBiAnxeA6wntfD2uzBqQ6bJLYYJpDRM5/O6gr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018111325155-cfb782e5-f129-41a6-bd66-018b46ce14d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14ccc6cfebabb9f4e0fe445838442e2005954655e00e7786b9d09b8684b09e49
Date: Sun, 29 May 2022 19:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653850919
