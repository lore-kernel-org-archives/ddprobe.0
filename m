Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090DB57EE
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656715012;
	h=To:Subject:From:Message-Id:Date;
	bh=AAeA7gGG0sAsp0JIbM3Q15mx0ESxB43PhjcSA5v7w+I=;
	b=HzYbTmTXZ9cFn2c77yvIukeKDzK9n1EObL8a0GGcW5P7ExXFhOkZw47021I3BwHl
	xQXeuWChf6GuyIhOvC9AX/FXxxR7U5iHGk9V3AQUKjWIxsuUqlc+xQprPlmEbYYSTL1
	ql4KdhGMqlTobsT3+cLhQjwwg9nrDx4M6QCRzLc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656715012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AAeA7gGG0sAsp0JIbM3Q15mx0ESxB43PhjcSA5v7w+I=;
	b=EvHxqykSST/JRfE61cW5nyiCNKA5GboKdnzDnnfa5Sf/1qaxD3JOrpDtw5quRTs7
	pzY1i9jSeTFmyNXT/syiKJQcxvNic8nLHaK/cc67x/Hc5ksCsrwubGAdFfdxkcKjQsB
	KLLwvzV35YZ1MrsiNVihq4kwklekfpneSFRJHqJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bbe8e8f3-6392d34e-519a-45eb-8545-c554a061db64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dceb064fba8ecb1c75423ea6fffc24293516e7378fa19b5d035c7286c982a6a
Date: Fri, 1 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656715012
