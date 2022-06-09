Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A77A7C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 00:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654735139;
	h=To:Subject:From:Message-Id:Date;
	bh=PIGd4ygf6ItR1llgpgCjXXhkkaqWjS7hyZaVQDxS850=;
	b=CL8IJAAc90KW15Sxlp0V4Arhgfs//2XEShvdiOhm18xq1PD83MYckO3f7mIKwHGA
	DpPaAcrxj0ew7zLjt2fVx1eYJ5uDQuvWQGnmpIpgVFEOzEx3/7SiNhHDpyMH0qBWPIq
	fftN/apkf93wgp0/cfWTU8JVTMykvtiUbOrdGFrw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654735139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PIGd4ygf6ItR1llgpgCjXXhkkaqWjS7hyZaVQDxS850=;
	b=YsDBGLcdRL08qYw2L9WGp68PSnfmZPLhY6AOPqy2Kif9obX1iQ0UMnuYGDGEazW6
	dmUQbxVIiJ4qnmB/eZ4k2uaTDvajqBczQZ/Dx/lztfLH5wJ43Mp9zk+veELjNNWqUQQ
	kAU3sHp9kWaRYRE2yzHqjA9xstIxdWHwGsHJkCgI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018145e67222-72937812-56da-4454-935c-f348d8e0da6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 979725db243a10b39e809f32a496b9a2781871b1487396e01034b65080fd2877
Date: Thu, 9 Jun 2022 00:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654735139
