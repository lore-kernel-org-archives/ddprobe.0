Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0C47C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 13:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656248812;
	h=To:Subject:From:Message-Id:Date;
	bh=Rs6A1Prj6qRSvpml2q/x+axxZZFjGzXC0xFn7Pp5QhQ=;
	b=db+23YgdlE8mbDGBt9GOl/bvspHWh7puaqYNLvNCyKWOq5WnfXTxe++RSZp3fSA2
	bKZ5cu0ZjNxDZT2D4EtJxhHnlufw/g1Zi6p1n/RW8MxjhIGAZXFbxn6HeF41ESuhumZ
	4EiQCxdj7jvzWBnZzBEVBJCnS/MGM9qcLETbP10g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656248812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rs6A1Prj6qRSvpml2q/x+axxZZFjGzXC0xFn7Pp5QhQ=;
	b=NTItNVqxpuebx6t1GrDsKZgiS2M9dHutZDoHFiwYjhCjk1NRoDL7phVPylbLple/
	5pEHAVmQ5Pb6+6HHcoeXp6+zfZR8tEwZMAkbgpqpiCUFaQHn9Y95L1oZnIkvvaI+HEb
	ifDpH/RRhtABHPtiiEWl1gsyeCyduhekJSF907VQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a01f430f-7c21db4c-7929-4e45-90a8-35f01cdc615f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fc3fec3ff1f6801ff3287798a6edcd3d109aae87df515f2bb8217b243b245ba
Date: Sun, 26 Jun 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656248812
