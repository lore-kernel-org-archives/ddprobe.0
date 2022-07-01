Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7C91855
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656670612;
	h=To:Subject:From:Message-Id:Date;
	bh=T+dhsXyoNh1zha1Mc0gN2CiaGSZxbwdOzLVWGRBqa0s=;
	b=GASVBWkzkgSPOPEkSpjLJaMLnm1zYxMcgE4wRp3tzwdsVncZvVRfIaebTSAk9wh0
	mHLni86eQ6fbMwWMH9Xs1dkoQBz3tZ4XitcXQxi4JFuUJ+NsM0TOOpasttnTkxSq3KH
	9ojgfS5l7zLwYGzGy/UTLR6Mo4zw8xGbanzYhE/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656670612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T+dhsXyoNh1zha1Mc0gN2CiaGSZxbwdOzLVWGRBqa0s=;
	b=UJJgAGcv7LQCChk0JoAK2LRcjnmSoCQ+zIor80sqeeaXjVd1Y0mLDRPFbdtJZ86Q
	k1HYREfYkwcitf1TEgQ0GiOG5wlLB8Z8o2FGiy7777SIaTLcSI6VLl8Qx3Pn/GuHb/0
	XCngndZTfbLIAOF/FQ3zuoMJnBY28nb+fxq85uNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b9436b42-435fcad4-0599-4365-98e7-61bda56ed42d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6d58bc079ee150b31f34c315e55b18cce33dbaa2c34d7ac205dd2f971addb13
Date: Fri, 1 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656670612
