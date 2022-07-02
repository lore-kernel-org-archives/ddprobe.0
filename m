Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587B36D24
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656785212;
	h=To:Subject:From:Message-Id:Date;
	bh=l/QPhErr3JcbrJ7DsrvsyU71Y2YZlv2PZb+anks50us=;
	b=CXLzlULsgY+ZPgS91/Vv4A5EyhzgnN4qT1vhKseP3kBZnanFQdVZSWGG4ftciYr8
	1TF0bmpt2hDT/E2P9VlLJK69Y1bhrCDZEi6zTmd0v9E50Nj8FkkxGEH4DYBFobg2cPi
	V5a5nJDlMYLqDx6o/ccGuT+BPFqG3myiXE77ZpxU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656785212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l/QPhErr3JcbrJ7DsrvsyU71Y2YZlv2PZb+anks50us=;
	b=c8XWNRMKcyvf7y9WjXjwUcE5E5t1OzTtGUWX8NlnhCVj6XS5IX7QMBvUpQEDFbl7
	Uvbml7a38TZ7uS+K/xf/dJPdNKDoiCR4P3yD1J7SUBIJsJAe5FC2rJxQBZMFsJ1X98i
	Ku2i0JPpfv2MRYhQVOCoCXvzoXDRouBvApYUbbQ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c01813d0-655467a6-5f40-4525-ab29-10023f890a47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d305d2ada4384999d0724695b9b36c8d65f9f5e3ede2a61dfd87bf109ed09d7
Date: Sat, 2 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656785212
