Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3ED5107
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646851285;
	h=To:Subject:From:Message-Id:Date;
	bh=zDSwslG95d4/zeh1P8ZoqEz5g35Xq4nsA5LKRPEFFBY=;
	b=l5vksK7dgOljZD2FxcAHChAsbTVS95XNXqLgCRcbGza+xkE1L+pSNN1YLIcj73Lt
	HyNVdIh6inZ8sIIOaiCEYStNEw80tJecjAvHuehKhbv9km0JPlnPuOq3B8lY5hryM14
	tSNvCDmrm+/FHEqUyVHx5LgFznpfOvaMJRNVIf4M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646851285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zDSwslG95d4/zeh1P8ZoqEz5g35Xq4nsA5LKRPEFFBY=;
	b=aNYOy6XlbdclOXzwZxYluwbcoLpP52BErE5Ur2aZy9Y6Sd42IbY3VcFfZftTrLDF
	CRJT6v4TBq1wKFaCUsHLLPWAemxh9AW5dQz3SFIYiYuDj3mKh3aLxkVN6KRq63OmUzn
	7ENrutPMyesT1LbvEsRiPPlDEKLiC2x3l/ahzKmk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ffc5f95-1ae85835-1d05-414b-bc18-dc507c6dd099-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04ad2673a45309eb2217d3f17b822faca5d44f654469e45bf2a94ebb180a84ef
Date: Wed, 9 Mar 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646851284
