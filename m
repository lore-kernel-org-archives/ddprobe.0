Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72FA07E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658635012;
	h=To:Subject:From:Message-Id:Date;
	bh=H9jUNSqYSDmNgUSpNY5oE5TjGirZRIpG0Tf/yDuCQaQ=;
	b=CGlIoUF3onoo+aIGp3hv5YaTBzFnV13uWB7Gidz0CkOTaFd/8Z5begyPTphVNipr
	XhWdIfmTCtOCaR+PpdJq6oRCF7dt66O8v2a6zUTwMDFbxN/OVsZmks4YHajcrF7ko4d
	i174E/H3BO2J63J8KRKCew+FTj9X4UGvwK2gGwZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658635012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H9jUNSqYSDmNgUSpNY5oE5TjGirZRIpG0Tf/yDuCQaQ=;
	b=FwWI0LHAMc9+VxY+WinWMTmEJpobld4qPySM+QYKxhSPEqrbeK3WXvv/F3a3lleO
	2HLYysOudLIFTDlgZGX3STs4S3z+PgyvNyIA/w/hCDwRwrSBmv8f0Hr/WUHkCv5E/Ng
	E88jXLEMgnCEfhnAknSMDOx5r7WIzZ1WpE16R5KU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822e59c8f0-47d6ba3b-defc-4f74-b137-7da320233083-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37acdad95d06ae1caf40cc1e05c2889c0267d19f1abe16234a2ef0a192b36c35
Date: Sun, 24 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658635012
