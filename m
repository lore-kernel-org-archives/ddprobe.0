Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF9A7E
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646321785;
	h=To:Subject:From:Message-Id:Date;
	bh=VMWw8EZw+eLA/lM7YZHEgEMvmynRqVERKEPYtR9zCHg=;
	b=LRL2gxxWmYNpoQ6D+y5O2EGzIepIIpEadxaEhyhlfNVMe5dB1eHYTRcJ67+m8clt
	6zK8SUPhjiuTVs5O4UMI/D4jrO/zGbvKRRdHmVZAL0e5meMu2v+x8ZHtnxwWQby1ynu
	5W+x6WQJI+t3oVVvGqwOTnYejUm+GHOBSA2GfhIc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646321785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VMWw8EZw+eLA/lM7YZHEgEMvmynRqVERKEPYtR9zCHg=;
	b=ZjO1BtCSpb/ZWL7a0TB6mO4yF62iGcFwHJWiiAmxBfOhqxzWVaOtJmKYBaXv/Pem
	dMdrIbQR7gheW8IOjFQQ895mGcqrhIMolF81Ke2y09OoP1yH38D1u3aSKVpA5Z+D9mM
	7kAv6IpXL4Orz4EP3A6DuyTLYQ5RkkSvjDATVeAA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f506cd7da-2bff60a6-6897-4355-b014-e7d1ef7e19d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2aa3c9c4599fce3eba825f079e0e8a7c5f885e65c5ddb7114bbcbe2e20610821
Date: Thu, 3 Mar 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646321784
