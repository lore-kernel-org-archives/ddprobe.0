Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484007A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659076252;
	h=To:Subject:From:Message-Id:Date;
	bh=zQ9woLcwZAOvFWN5497OAPRdG+JEOHF3C4K6nTn/q+A=;
	b=B3bdxDaFQc6nGx1EsWmerkDyQbfKZUw2vv9Xj3e2rsrgcYQ4Qps76Zz64ebOB98N
	BLJbPw5jGD49qU/X/A/vKHGdLfmcXknqw9exTyMDAVFNHB2NHQsO6Y4fmjQdQhTwySx
	m3YFpKAsH5fe6aAsKFWI6fSGvjs4bssyKn6X/K3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659076252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zQ9woLcwZAOvFWN5497OAPRdG+JEOHF3C4K6nTn/q+A=;
	b=ck6s1zJB3xtbF/OpcjU9LGSZni1CqZTmDUmCcEFz2HhB+zMptCqWpJqzXROIWAiE
	bfnzO6OKDitGdUrerevgdbb+FN4MgoHoct48WzEAJDiCUgPhdhqzn+yExF8wixLtOa6
	P+HBe+lKsuZi5iDMOQGh/LIX3nT7JqiAe7TIXS5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018248a6938f-0e364186-397b-44a4-bb25-fc5596cf862b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5308bf86452c470d0aa4a86303097a94e6a6d9fee3708c614dac59dc748c1e75
Date: Fri, 29 Jul 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659076252
