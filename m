Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E357C
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646677885;
	h=To:Subject:From:Message-Id:Date;
	bh=zK4kn23JCUgEWYv7WNPrnH2z7zGBVZa+dxF3yBk0AmY=;
	b=YFH0yEcR3yLDaHa1NEptVm0aepoyAVaFq0YYZnWgvRU3LH0o9X8mJ09Caz57x/gQ
	njiebDK38YLJRivGm4q25ONQN3sNvPLz2r9Tls0LkdmM/xx1F2Cx77BlAozpoCuUxmL
	C1wr5YNOcj6EUEJcVdbid7wMeAVGBLsGJi6m04x0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646677885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zK4kn23JCUgEWYv7WNPrnH2z7zGBVZa+dxF3yBk0AmY=;
	b=eCx5P2hAX/9n6Y5WvcI2IjoHwoJ4Av1XdigiNrKkAk/hithGk6Q3FBKurw4kwLUx
	pq6h+FynA8UPUQ4Zam41pcltu6sbzofi2GzVMAKKgaMN9Py5jAnVWWTNJnm4PV/O6vd
	dUyvtkfKQ0EMdtxy1Jpxp9mbROOhQMRPmPRCzWdM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f65a67f9c-911e0df1-157e-45af-8e4c-a08c050cb39f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48409d6c506250c076c149e28cd34105e85fdca58fa8f6b91949c8289c6535a3
Date: Mon, 7 Mar 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646677884
