Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021217C
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646159484;
	h=To:Subject:From:Message-Id:Date;
	bh=xAJIoY2oJD/cHUB5EeuKZtgLhqog4KQ/YFbq4R+CU1k=;
	b=GcxHrcJ68VXvNpafnBiUE6SsBK+0R7lW3UCNCjGRVp2lihDvK47L1NbiNFeBRwHq
	HcklA5g7ejh9gD/Zkb3RCnhi/7jtqzrbNYiJEOVd286KC4PFPkffMCxsM16w1VGhbUP
	YqvCIQAlPY+3XnJ1ILZXGwYuGNJJCLqd3YbI130M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646159484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xAJIoY2oJD/cHUB5EeuKZtgLhqog4KQ/YFbq4R+CU1k=;
	b=VejDBfIZVAD/z8Wkn5O7KzyXqt9qVjwngA+Hx0mZTraRUh4FR34PrTuNDx8dS1Zw
	s5TrxIK+TlzaNbmt9EuLM9Ub225iDSEapfG6DRVmI0moV8nJNl+q/e23/eoSLyq0kIr
	kV3Xh0iURYnFnfHhXuuZf1aW+hstvCCX1FF9YKi8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f46c0576a-7d80487e-693a-4df7-b515-207c11f2f209-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83dd34b127c0dd9abadea9d3b9d6d576221b1b7c38a8af432b6443451cc97cb1
Date: Tue, 1 Mar 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646159484
