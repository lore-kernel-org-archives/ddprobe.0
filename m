Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011D87C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657235212;
	h=To:Subject:From:Message-Id:Date;
	bh=HJlvWiuASmsiM0FO9z3cbCatZQ3AsZ/h6Q0aCFe0ZIA=;
	b=ZCZpHSZkUfDfpcJm296ndqfENL0Q4fZjNzztyhkT9DwF5P94AcEBObSs+FZUMVsJ
	tP0+Id9BUQl596lCn2syi8Vt9it8T0Bvqu4C/l4ElngAJaYbKX9IDcdbSwPoQTr88xH
	cQnO79NSZSqAqquLGjVkL6UGzLMh+48AZbLFj4Gc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657235212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HJlvWiuASmsiM0FO9z3cbCatZQ3AsZ/h6Q0aCFe0ZIA=;
	b=A1rhfHjW1xhTY/b5giptoU0HV1nWKF+wY+tZqnBDNH+7zIXhAQ504szJahH6jMdl
	Aas/mVsX6s375ixiDNkH6KMilIg4i+Ecy6LERewDlxlvU5TXHzXYCUOIBGCPy28qlpc
	C4Lz4IJGoTtB15a5KdeWHnkXCAo3Va8B/tyNloD4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181daea87e4-eb5850aa-6802-4bc1-b138-2afada98f405-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 239f2d88ee2f90cd041b6acc68e2f8734502a4be7f0399d1e199eedd2fca8cfe
Date: Thu, 7 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657235212
