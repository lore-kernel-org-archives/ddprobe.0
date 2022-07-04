Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D8C7E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 16:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656953212;
	h=To:Subject:From:Message-Id:Date;
	bh=CES04wr22GZi4nxF5i2+xfI8bmlfvduGJxDA9Vei3aM=;
	b=SNrgh2MWT5KyO4C/YS7x+JiZjV8rFAy/WfMCBYs1LCL2rMAem7d1CswDXhLmJz/c
	JPJzO0VmoLoE6FDsjE9JB/e10htMc9Yx53MukOQnjMjje6Nx8KO//eKUN9xTi4s4QNv
	2NcfA2QlXi9qRUiLAfW8on4rovSKX22G/94zFTIQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656953212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CES04wr22GZi4nxF5i2+xfI8bmlfvduGJxDA9Vei3aM=;
	b=gnI8SkB4CFKwr8CCziTLdWg5J993Rgs9QkDG/W4gOMLmp5NwyiqTMt41f7kZYryD
	zgKNOvdzbBNqYlCpW/Md7uDpimwTjHmnOcO7JPa+Up9GjGisBJZuvW/zwQ9kODd33ht
	qkeOBNjvuiP8M8cJrgRoxceYOYnZINHarmiWKhsI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca1b8d3f-b956f66a-e29c-45cb-8029-1aec0d158c9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f62b02962074936f9481b212e1612fa9b2c546c0ceb140a9df530e5a580939c
Date: Mon, 4 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656953212
