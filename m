Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94AB02569
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645461685;
	h=To:Subject:From:Message-Id:Date;
	bh=v8QQeA7XUMz80tsIiirPsr8e5O8RmoSO+hRmc34LJ54=;
	b=VC64NmVbG4fMLiz122vFC+Uspig9n1KPkPgCTrrQA3+AH9KubsvqUp+bfXFd9j7Y
	NlFXSCLuTG5G78WQJMVQyqMAizSZ6sSjIn0PO4s7ej3eb4z0+rpvuI3aEH58I1P2Pkp
	0PaC9q5cn5xTW0njKcx3yCVhYsyTyY2lqYHzYtsg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645461685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v8QQeA7XUMz80tsIiirPsr8e5O8RmoSO+hRmc34LJ54=;
	b=HqYZA5kIs34cFc4+Jn6gBKuoiasgjpQWhFdojLJG+y+TD1Mgr3ob1GwyOQZtuVJJ
	6Rv/gQxHNroJCQawb429YztcI7BFXGjWgXhEUVOh8+yRk9ZoLec3oizD7zpRyNp1emP
	aKKZO3vIdKUymUHUkoVI6SFyk4vhsxAKwJJJVqnE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d28c22d-845530ac-3470-4d59-9898-8ef3fae09ac3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f55ef71635806be3e9606a6cb05f825bfc156e3d4295391a6a6e311fcfc82b48
Date: Mon, 21 Feb 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645461684
