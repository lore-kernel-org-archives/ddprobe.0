Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC3B2F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645215085;
	h=To:Subject:From:Message-Id:Date;
	bh=11wZ3+qR/xJJHpL/PprwrUil9QfZEqj//O8vVGr8sZY=;
	b=CjGOSqsBpbfMpy+TRJNmkz6LOZBKJzODTjrHrTrM/4GRKaV1vkkeCOw22wCLpVse
	jiHiUxCkCWJserlB+iv1UAwfqF0CyowlmGaLhRh6oiBM/t0jzjSW7kqV9dem2xZMpJV
	tzAGdXMUKhhy+Yxeq4tuD+xf5aXOcC839ZvDPPgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645215085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=11wZ3+qR/xJJHpL/PprwrUil9QfZEqj//O8vVGr8sZY=;
	b=aS5cwZ73KwalrnmcV0rZhRPugzVY8fwJJ7NVmIzcSJAzQ8NalQSoc4hOYSEJU6lr
	vedubGQG79s6H5KZcu+5uUsBCiGUlqNba7VfmBXVLLbjSivL7RwNuWoq0cn1tdVvWko
	CL1PAyIAOBKxqlpyIR7DiAFGlHWCcViWLI7bsQe8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e75f153-bb2167df-96c1-4a1e-aea1-a97c553fdcea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d45878f70178fd779a283c5b271bfb56cd3e5c11b27641295968653eab1570c
Date: Fri, 18 Feb 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645215084
