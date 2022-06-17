Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F6D17D3
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 14:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655476619;
	h=To:Subject:From:Message-Id:Date;
	bh=RAxelnV3N5eMMjKXSm52mTLn5TMSIOIiqe3or0o/XGs=;
	b=ODT2rZxDpWCp6XfdXcLyglSCEjCI0TD1RlVxIXGuCdUPXYtGe5kWg+HkrstLVKSh
	3v505GaWa507AZvuQjLQ3KgJjc/Z/Mi+NVIPUYfbOWYqYQjqHOyTjoZgsmDKV6X6txp
	CoB/yY52gPUnWwWj4Bh6HabdZKqz3KGg1ijt8yl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655476619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RAxelnV3N5eMMjKXSm52mTLn5TMSIOIiqe3or0o/XGs=;
	b=DbC3O2P9DA/P50ZsrXWqScUVayTweqbXdmj8864WmZ3d37sNmQkA6HEPKxMq0ako
	PajNlwvpXlOkA7oqtxNAJr0xw/qHKajNJwIRnS49oC5Wf7aMoEud8zBgwwlGlT8kfLN
	IhASGfFd0pS10h4S1FdMi3+QE2/FUTPBd7yXhmcs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018172188830-a99b6ecf-4ed5-47e0-b8a8-6f57e5364ae1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8efe710026a30a856d58485b0177c9a86d3131d397201ce05b8fe5773580a5c
Date: Fri, 17 Jun 2022 14:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655476619
