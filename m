Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0154401
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656801412;
	h=To:Subject:From:Message-Id:Date;
	bh=Z/VSqLHaGPEhH59vcq2LXcY0JwuUkum39YcjVw/PIGc=;
	b=Xykag3AgIApmQy36LK/MPlMCgwCvxX4LujiFefAMa98xEsNxG/paHn3KQmWGOq0V
	VCBKgM12Hi7xu+2SGrQ50PMyeofwHzonPDqrEbLGLmCda8cnRB/BGCJrKJpXFIKB4Ij
	os8HKDIAQyE6a5SHj+eqEwWRHJilvdSICg17UfcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656801412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z/VSqLHaGPEhH59vcq2LXcY0JwuUkum39YcjVw/PIGc=;
	b=C17Gm7/a4LpffxXCyaMk94/bBdomLDlG7zhctZ/RUsDD5ZRU3B8LSyNIECB3mEeJ
	cKsnSYKDuc7WQ1rKJlbZlCJNctY2IKSAp8gqWWbJcy0OS2RXqqSTFnOK0EMy5yHn4Ci
	JDihqMv1Lvs91T6xd36pyv/aZBOE7qMBwe2D5DPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c10f44de-0fa7f027-086a-4293-938a-71b83a9f2f84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 654ea8f0ddc4b369699965562d166625c07a981772f942ca7807821e3bcaa933
Date: Sat, 2 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656801412
