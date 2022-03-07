Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14837C
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646680285;
	h=To:Subject:From:Message-Id:Date;
	bh=jq7nb2lu/W4NEm7IxZCorInKJKNFX+DpsKd9P+1+3yY=;
	b=jS+r9eEPv07L+pzVDQs77dgpMn6v+nXfbDdSwldEZ9L5PDIzZhYnWb+IZZ4ViBbX
	njzo08/Fkdgr1XSA7eDxjW6I9TDNBNL4bpxQ0Cr2W5XeRqiZH53mtzY0qMxjIWXZt17
	pwxYNrLbni/L2XFnLBeOdXPPnAKsGy78QeWMSZUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646680285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jq7nb2lu/W4NEm7IxZCorInKJKNFX+DpsKd9P+1+3yY=;
	b=bwwecu+iGHFrw2ht2wc/cgm+BqPkRJ3qis18ZwUI0KyFjhfPlsmaft89JnzgDCid
	Mi18ZB+nEsfvMh4kMi6XhiQtMf3Cvbzl//u9jLEzaNCcVZXFfbcfsHOTY57kv5lyGOP
	GfG5x6Ef8/SmqmGB6BzydrJacHPwz6HGjba1PfJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f65cb1e5f-b32adf90-80d2-43b6-9241-6a5ad055ffbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43ea910bfc5bead2fc78fbdb78a42d6ebb970a38d43262d5b0b177b61ca94f82
Date: Mon, 7 Mar 2022 19:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646680284
