Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CC5815A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 01:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648343878;
	h=To:Subject:From:Message-Id:Date;
	bh=kyCa2VJxY34aHQx8ITuZcGLxt63td2a0WBldXRg08LI=;
	b=bilmRMgTtRZGADFi6e40pobqC/q7YF4+r/aEboMgLwP1dXGgxBs5Y7j9iB7ffZz2
	IOCBRDGyQcx1cQzTZ3h8EuGyXQ8pLTOJSL9i+qJX/r78dqRUVz3tRucsRijlCSUlRg7
	H+oXm0vdqmI2dwIPlaZzchqndzWafbBks+MZW8zI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648343878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kyCa2VJxY34aHQx8ITuZcGLxt63td2a0WBldXRg08LI=;
	b=YCDUTKT+YtQSL0zj8Rg2DSbKp0UxvIJhGiVDY61FdcWEcVsECIeM9o6nAUjTxaLk
	gQe69J2uzib++kGHLLqB5rwKp8kDEwA4vvWtTQxRSMhalpuR77LmT3iBUpLaTobWJoz
	dakNPfqGyg5Zk5C2bFeNJqnNaQBsNlzgWJOy+b1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc8f38a7b-04517bde-5046-48c7-b0c9-4d9c17a1454f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16e9c964a16e75c0957b6207b18025e183aff045a5e7ebe99de0d64588560d19
Date: Sun, 27 Mar 2022 01:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648343878
