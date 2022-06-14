Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EF27C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 04:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655180159;
	h=To:Subject:From:Message-Id:Date;
	bh=Nl2b3g++8EwU2sQ3o5pEB4U4TAJcWdFG0rd4un5NS9I=;
	b=MYXEVLIAORfXjfTLfn1FChUPTK4OQwNSD6jh7hwBknPW9YtWafxww+Z7IF65ocmg
	/6jXweFik02BfpdGEHCvh4i20qTgrFNXKgSnkMVguscBSJf6ENzrP50t7T/8bhVTo2u
	nWnI9navkhqDSFYhx5j23hBndLdw4qCy7rpHNDxU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655180159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nl2b3g++8EwU2sQ3o5pEB4U4TAJcWdFG0rd4un5NS9I=;
	b=hXWsCpkm25ON1lWFexAq2jIVuB6t9xnKoYavGg5Bq1p8b4wqBpEbQscRB2/Fr2xt
	5c0xoCTGEQI6Au+6icKyeYgcPPRC3O5n/CuA0GZ2s5lP+bcCsImiS4l/SLQiTcC7T4T
	pwUMX2UTD0k7bWlcU4Qu9f43awwVFgs1J5lEmcjw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181606ce936-124dabd6-17a2-426e-9dc3-5d60d25a063a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3891d3cf627988999de04dc5f6f01bb73fb17c87c7b55a4ff74a6e2ac39a7740
Date: Tue, 14 Jun 2022 04:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655180159
