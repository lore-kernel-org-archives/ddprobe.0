Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6506628E3
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 12:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652358659;
	h=To:Subject:From:Message-Id:Date;
	bh=qV5jyPWNFiDzHhLOJvK50KAnmHEz+Scu4pUU5Nrz1uY=;
	b=KwRJkOipdWG6WArYyDCrzTId+mJ11iVioM+u97Pe2VEfHRgxqhZPewe9AjzZC5FK
	ckFR1yl54QNlzqgjYKb9eKlCOVwXq56MWpP2nL59wxL9TjAjKGhkgv+yWDLtzdrV6HX
	6z98IgUIktNTiPqPN1QNrxaoVd8pK7t12ykzrCPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652358659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qV5jyPWNFiDzHhLOJvK50KAnmHEz+Scu4pUU5Nrz1uY=;
	b=Zb4XFd9qgunuDNA8/8g/4lJc3nqf3IBqsmU2i6crMqvKTmdAJz9HcaeXYNQhCVFM
	Ck4TWmxCrX3g6oHg0972o3QTQBBqVlCZe485OX/8XJ5XRZluJhA6qM8irIx8bjixjXC
	VDTG44LQZSWPaV1KdV0sKA/htsx5/OBpISNV6THA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b8403ce4-d5e2c287-9ede-4fbe-b1e0-d7c4220000a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5292bcdb16a898729b757cb41635d0c10805a19402ceea46d563327a3684ba84
Date: Thu, 12 May 2022 12:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652358659
