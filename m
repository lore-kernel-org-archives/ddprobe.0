Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8888EBB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656580612;
	h=To:Subject:From:Message-Id:Date;
	bh=kXy43nz0KSWqHsxWl7xbv4xN9tgsVezcnSSiEvxoQAg=;
	b=j42mODDTLqxUkQsLcu9Z0R4s8nlKFxDMJvn+RjsuUXdy0NBw9xHNQ9nFdnwtzPhI
	m3oJ26IXelgwflh3zh/TjwlA9zXjCLNmhXX1Buq6mNczalgCARKJCKJZRBkGIFHgFhm
	VCosz+vhZb+7JPsQG6DmP4tnHZre4jvxi2AnziqI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656580612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kXy43nz0KSWqHsxWl7xbv4xN9tgsVezcnSSiEvxoQAg=;
	b=ESWxEP9h/auMHJCwHR/9VSYVgTvv7P1wwPsREQP31ACiesgIbydfUTLBmG6ESWOe
	6/wAEwyASvkYICKDVH9+/c2veUliORcIte7jMwW2jhwrR9RnXJ5u5I8to27F64nUfxZ
	sO+sr0BVMB+ZsF4nX+yFiNcOhaZKAZOrdFZVv8r8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3e620c4-46a7940b-45c9-4b11-8557-26f6a3298402-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52934ceb33127225bf78cb6a7a3a54c063324d3e2c7fc55ff46f0ae4785c7a81
Date: Thu, 30 Jun 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656580612
