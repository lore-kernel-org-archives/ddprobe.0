Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F191FD1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656052612;
	h=To:Subject:From:Message-Id:Date;
	bh=iuNBo35jrOeDDQvKBxHujhnhxNPPbjYUygxtugdhURQ=;
	b=GNqQi/mxcmvWGDOsX6k0UVEzzdKHb+yHZdhvPN477jwlgnJlVFbizse+MGmfK+RB
	gMOt4muLeknzCJffGR9V5hDAzoMSA3Wa5mtwxxGNFmd2AcGSWA7x+GdePHBiysTyBrw
	j9NTbyKTmGTchIKrS64HCTQom4xDwfq1d0qMA+BM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656052612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iuNBo35jrOeDDQvKBxHujhnhxNPPbjYUygxtugdhURQ=;
	b=gOy2AVYwm9GRXgfZIoZmYuoIUn+P/tOgneTNPFrbXby9KUThzTfLqk7Sya0HorAx
	tuy2j4FQOfrFsAU1d2u0AGVLiJ6NeZ4ShJWSHWCEu8YoabCGtTxCEZ8AbdGcCyN5rIO
	Y8hRFZvKfKMkuUjjrA6GdDe6xKp0PyfnzA1Df01A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181946d7ce9-cbe16491-d1c3-48c8-80b7-86691c2df55a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c5c6c419cbe9bfbb5dd5fa84fed337c2ad1d6d02971ab2df497530e847709a3
Date: Fri, 24 Jun 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656052612
