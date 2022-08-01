Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738B57F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659352252;
	h=To:Subject:From:Message-Id:Date;
	bh=QiHZmi9ZDfQ35Dg9vAiiiBeib4aiAdS5QW7rnX4/lUw=;
	b=b+92XJgC9z34ccQAnCt391Dyerd4KcNSZotz42ptD7f+83mGJVaDiJk86iorD63+
	vT2Sdz+jEXeYDAGZET2k0UE1DiM6vrUd48Uuab2iQ8XH7WVLbzTpSdWhYc6x2RVfXtl
	D6MMZSxFgXTCZszY3kNaWVIXPQClyhIwCIusnjJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659352252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QiHZmi9ZDfQ35Dg9vAiiiBeib4aiAdS5QW7rnX4/lUw=;
	b=bmYFhzxWTS3/5k7biZLhSytsUiRQjJAmkUqVqzBTto5QMUk001j02+7lpHS6Ruk4
	WKuuYgsZlJsw45kke/2ju2IUd4qtVNgVxi4yDLJ6hS2pNVJUDVPBcgugO5u0X92joCC
	h0kBQXMWNuDIBaBBMUJmtp0KWmGNRZqCxsZWBMzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182591a0088-cb3a4361-8151-4dee-bda7-09b4308a9194-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13aa79c7b8a49583251767926a9231561aaaf0e2cbf0362cae0464cce69fb514
Date: Mon, 1 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659352252
