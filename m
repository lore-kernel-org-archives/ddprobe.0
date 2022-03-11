Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9097E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646987784;
	h=To:Subject:From:Message-Id:Date;
	bh=NWd3TTQ8Kye0cBkFnxmsYxNgEFTsGAk0Qz2jHa6W//c=;
	b=VJfKcXwR/FbgZEHs5XoiwJK2xHTeCJr8vgPl3XPejEzzfI2gKIuPNJNzf3ZMPAZD
	GarXPC4IIh9MNwVk7HAqsXGAGqy8BUF26A7bcC4VUe5Ow0Hhzhw757RL0NApKDaWJSx
	lr1a0M64yx8XxEPiHfevACQxuoBcguvMojOy80AM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646987784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NWd3TTQ8Kye0cBkFnxmsYxNgEFTsGAk0Qz2jHa6W//c=;
	b=gY6CuIYrk/M/k9JBtgFLW83yof/fh7C64i4ScDd8rJDn3DgAM6YwVJtuSEnVWMwD
	gGLEd2+pS4eYtTLVs9EOUNZv1UnFK+Z8hUjw1Pa1rYC+tNv3qHw88SpDVzR2Nmh1DRZ
	pxmOpMbn+grZ68kuoPPkwEFH+6wsPh0NtwcLo+3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f781f3219-d3afdb9e-c228-4570-8bc9-c6be2444dfb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 529c25362709233579f42a51f4486cf3189350d9d22376cb9d6c4e2ec05f52da
Date: Fri, 11 Mar 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646987784
