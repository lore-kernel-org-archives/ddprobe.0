Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3B11C3A
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656687412;
	h=To:Subject:From:Message-Id:Date;
	bh=ofwoznsApeeisOXPZQy5dIuK8njKsf3/E+p+0DNAqdI=;
	b=lJJWmwJoSXR+7sjuhkF4jbJSxhy4Vv7WLw+F4sT84Wbz54oa8ZKn9aAIOAmWvPv5
	PmF81eAFKXLneBDT7pNa7abTUzMQSC7lVGQRruWUtLsyE8mzI0g8Ty8wjMEgJ8p1KTd
	OKunokOQLuA9J8bM4wbdyzN3LwUB2M+JFgfZA6cs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656687412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ofwoznsApeeisOXPZQy5dIuK8njKsf3/E+p+0DNAqdI=;
	b=XCCNcXb7Ou7Pr/mP3l7XTP8rqrDBMWcI0V92SCUqd5OZ6KXKkmX+V7fVek4bmK8Z
	CaqBJ8beCYaK0JmZxeTOysbqrHS3xvpUFok6UX19gMgF0MdA1ldN12qD2rC9Y4CaBx1
	HgZSbcBz4U3emNnhtZIFLfDkK+Mu7zhyqrs0EsEA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ba43c46f-5bac715f-edd5-41a5-bb88-20851134f1cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ed481f4db55b2747b64e67569135fd7623577ca95f16a86837d64bfabc96254
Date: Fri, 1 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656687412
