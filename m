Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA017E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644649252;
	h=To:Subject:From:Message-Id:Date;
	bh=xJ5FEg2Jwj8cjbCYxeRMSgUdYXP9rRxuBT6M5bVZ4nM=;
	b=Y1O8mqQlQjwVj3+WGEPP3qNvEDdrTxSmRxUmV7fFEmhnhyinfArxc61ZV5/P/+HH
	ksrYYlujlrCeDoNva02xwWpqH5M3jnMT/a1sXdlKE36l/V9fYAoRGtwMF7zahM1gFUQ
	UqShO9dK1r7TLW1StjNBk7n3PSA8/MH/K3LS2uLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644649252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xJ5FEg2Jwj8cjbCYxeRMSgUdYXP9rRxuBT6M5bVZ4nM=;
	b=aQL3ZoELMHDx1JJMCeQvREEuEsAu0KWBAgyqiU/aGJTJ7kj35iRrSVaiwTyYmUlx
	30QQpZJz2OLa2aUPdXniDG/WAKqRLiUjWYiBR5knQKVehNZVxBY4ndZOD3xAO243ubb
	+V2kRYvvmvOJveJu7tJ4+j5WuMttFztYDkPtrkbI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eecbc05cc-628255ba-9595-49f4-a1f6-e43465204791-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37d1137f1b0d28393fa87c15c303794ce27d237230e39e92f364454da116458d
Date: Sat, 12 Feb 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644649252
