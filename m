Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E27A635
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 12:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657283812;
	h=To:Subject:From:Message-Id:Date;
	bh=lvUjcM0YgqEQWDBEfvmHnPAAniqaJVLVsGlfcKNGtk0=;
	b=geBqJOmjvAAtVhXp+jemgGx8RuUcWabZ3azRtPc/SMg55qFDXYaLsTQ7CN0A850A
	H5dq8CWVt0KJg0v7z3ZOjAifY2NJ76qTNv6AcmYXOBDG8AIt7i7CvvLNfK4o9tN9uTM
	gzen7VoBXSnyuBlwPRs4hXXGzmvldtp163PBFU68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657283812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lvUjcM0YgqEQWDBEfvmHnPAAniqaJVLVsGlfcKNGtk0=;
	b=NtPP7h3IL8w50VH6/ecXW41hI8pb5U59ILvoT5urxsY/unDhnCntWD+OUl0WOpmq
	3E6WJ4VAYWjxrtHsZphlISRswetbEWCuHse/ynnUCkWInZ19oCx+5E50+hrMNla0MHJ
	CyBXeYd//wjEfyagQubNXhT4GleBPLkzHd589XqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ddd01b9f-7012ac25-a4e3-44df-8a95-e8c46fef34c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86733bba0a556ea1eee1afe59d1034052e842856b6ab5baaf7aa6c7d79c8cefc
Date: Fri, 8 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657283812
