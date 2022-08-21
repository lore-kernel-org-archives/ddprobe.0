Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573C81377
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661091052;
	h=To:Subject:From:Message-Id:Date;
	bh=5WOvm5nuU6M+qvgJISekb56whfpYYD/bk6P3RjkPpz4=;
	b=O8y6a7b9PRVmRywnZGyOOKa+EtdxXnU844EG/GIfqUN0SN4TuRIofxpvxKhLW241
	YpWOnTl+WD1cy0p4Sw5iy/K2iSlekVjST7JKTjdcfaExrFp9rwRwE7tdncN567aUZEF
	zWdQAEbCJME6YWL2RDjjkUCyEJ/sLfQ213j6HuI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661091052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5WOvm5nuU6M+qvgJISekb56whfpYYD/bk6P3RjkPpz4=;
	b=hg0cc7Ey6cGKeGH2HVLaJkjqMD3GTa/1hyujabWug0B7hvHdM+QxZaJnVi19/sRJ
	tZ2LJV8ZIZ+2UDpKuzmJaQ49fqd7LVaC8YjMwbMl63+pR41GaMy2e72TEn6xE/MsCfD
	/nsIEIKRNc8L4MK98YqDK4n0PohI/Al43k4Odd6Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c0bdfc3e-2b8a6cb7-51c5-4142-9578-b36aed1cab98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e71c52d85722a9a8bbfb4c2b73cf6e9df41fea4d36d7424fe9c8fa63cae6e507
Date: Sun, 21 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661091052
