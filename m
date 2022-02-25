Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E13010EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645749085;
	h=To:Subject:From:Message-Id:Date;
	bh=qnFjIxBD+qlw5J1IXDcqgOyMd5y0DGxEVbQ39NsyE40=;
	b=XW/UQQXmbtPuikF9EWucySX08Cz4KUzClB/BVjepI81fC2CyHy3jx0kCilq+OtfE
	Jrmbl2cWI4lkpbTZlzu1S3MTPoIbwFVzPDF7Zaulb6eBP6WpKj3+A0Ti0D8/jxx6msa
	6/ylxHlz6/jkRLAH3b65z1+48HX49kmzQbibxpjs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645749085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qnFjIxBD+qlw5J1IXDcqgOyMd5y0DGxEVbQ39NsyE40=;
	b=Vyf4hudK1wREoeKWoDTWmWPfXzIfr8/1T0kypELE59vR8CdXn3PPikSXGqyzf1/h
	yW6g5Rg2Ck7SuIxI04GOPtfGMdWtoc4oXNlkoT/+oSDhSUL3SwzEVAx0tLzD5ppMG0d
	NDvL385aXQbA5hEgTpCL4MIA1Mu8i0mMtThmno3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2e4a22ad-808cfbed-9d65-46e3-a4ce-1957f26698e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7afbf097da4b908c4221944f9f3fdab7ff23a258ced1a03375812eb5d4c4bcc7
Date: Fri, 25 Feb 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645749084
