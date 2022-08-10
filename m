Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6521B17CA
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660111852;
	h=To:Subject:From:Message-Id:Date;
	bh=sUpGkaG1cusgKy+DQq1Z8apzJ6g/uG211KKlGB4F5Kk=;
	b=Be/3jOYc7Hv+uQxZvRhlhX/K6L1g3k9U976uZqKWMjKWhcJ/yhzhjr29VLkaGc+I
	auB4PN33jhiusRr+B5WCbL9w7W3zL0XANK/DuzwYQiU2Mv7Q+TvvJKy8MCtloHs1PEe
	Xpc4eiLLvzYPHwQQmnqFq1PqdK7Gq5VYhl44hvNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660111852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sUpGkaG1cusgKy+DQq1Z8apzJ6g/uG211KKlGB4F5Kk=;
	b=S2Gxwn1sem3Fp5hG6uKvtO19MyrJCND7KcJsaznqhLfvqlYMrdNTVoRWgU7Wbrnf
	PyEueaWFNSU+OSSByS2fLWFyVcksldQHo4n4mUlr9pMM4Ytlyh8Z7TedCLxNpasszpX
	4MSUioEzO7vQoLJ+6vkeEiF/KXPlKeO4wWdL390w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182866093f7-9a3f4dd7-aa77-46ee-891a-9d098f30f2f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a05876aea05d6dcbd00993376e17e77cebc1df0249cedfe1f5921553d1712b3a
Date: Wed, 10 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660111852
