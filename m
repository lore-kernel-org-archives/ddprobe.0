Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DA17A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646877385;
	h=To:Subject:From:Message-Id:Date;
	bh=+wZ3mYu9qilZlrF7cZjrwWdwE72dfF9AFUKN4a7wmzY=;
	b=OJhrRz74zUAk85JoYCKDyPxLhyNC59kfvDZ5tgsZ4tW9DHd63nY3N4fqKkKmxezf
	c8ht/n1fngJf4PFj1zEYMIvMUNt4o1/TDLB54U+N6/3710zIUaCImPzzeaLQMhR2ew5
	BiBbs/nUQCcVXFi2J7ERqTFlrbST84xUlEx4u7xw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646877385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+wZ3mYu9qilZlrF7cZjrwWdwE72dfF9AFUKN4a7wmzY=;
	b=EWuSFanrL4w+gfcwhKjOq+ULIvbQVQ1GSRfW7LNFvvDJ7sy8QpWnGk1VB6sGC91v
	CnGW2zwz4e6/t/kZF0BfxshbsKqhsL/4899TUDD5W6cQSL06x1Y46acrA0/kNngZI+y
	yEIvfDhHRxPJKeAOeAOiGkzpERgwBZcfSUb1nFwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f718aa033-aaacb9a0-20ac-4a0a-a842-b6fdd0c94786-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5edbdf0170f3f72d1fd60376b2bf84b54921d26bce82c525641251dc6a6d3eb8
Date: Thu, 10 Mar 2022 01:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646877384
