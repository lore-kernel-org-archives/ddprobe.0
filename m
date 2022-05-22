Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E933220F7
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 05:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653197459;
	h=To:Subject:From:Message-Id:Date;
	bh=FlChlZ6oAMgiFr8Bc5GNDzDTyCAkM1Z9txPqaiwq20g=;
	b=M4CKjd1CmInQZeWpqBBR8NkxswrmdwquXrnDqA7kM8ZUtcDazdHthGSr8gyIlQkI
	LWPaGH5r+OZuLDsCYvHfGFNL5NuFvLDRQmWs2y7cuT0oAlZCBmYG3TtPtWiYeL/lp/I
	eZYS9FPDYalECxF30pG0Oo1mG015NryzG3XLcQGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653197459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FlChlZ6oAMgiFr8Bc5GNDzDTyCAkM1Z9txPqaiwq20g=;
	b=ME4mfqAOibbFnarG0JVhskSb6dIOd6Iv1u2+hQ4shqc0ElMDioIILfJAYQE4guLc
	Bg+9Nmjj7+/VRh6Qf08LbKxyMXuNoeGFmEXHCYhP1cYwyuwXGBtc81fBN5O1OI+cPV7
	Gmv5lRBAmvZG+ewUkLcgAai5COVkkouP5p//UW6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ea3f4f52-f60d309e-fc22-4bf8-8cf0-cfa6e55618db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc75a6d19c1b605d941b72644d172daa87f18576c2285c059a33ba0a793b7de5
Date: Sun, 22 May 2022 05:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653197459
