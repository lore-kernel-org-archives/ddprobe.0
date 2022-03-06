Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7640D7E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646603184;
	h=To:Subject:From:Message-Id:Date;
	bh=wrtpJqd6E+/roFPTCjfyZmDfs7Ez8bFkb7NTI6GYj9A=;
	b=LPuNi5RQY1UmN9tIHveemGGkv5mcMDEzh7Q1nbii+JKwniNOJInSJE4+g4Zdu7lQ
	4WQO93Uvldnbn/5bldtstrsHj7UIiglWYA4mHVxHHVIi3gdQdpv/6bjcr7YBf4imMLH
	nkiL/+IA7iIl0Beg1amRHoX8yR8d5XIuo9hJLBzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646603184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wrtpJqd6E+/roFPTCjfyZmDfs7Ez8bFkb7NTI6GYj9A=;
	b=Z3tXDYv9eMatEJUBPSodwjaEbhLOTJXFBBklG7t6phVLv+XmdtQrzlcfQnBwCo0y
	3w47AybOFuENESx7xh0Pn6IkWEhA47F6ZA5vWuDLXkNvSPLeeoDXojOJJ8yLQ952Wp0
	pcAGA7M1OoMDlGlXuaLRC+lXevVxYLSrzgrKL0Z4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6132aa8c-8963c8ad-6901-4492-9ca1-0ddb6314c7ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff617451ad77caed5d44a68430d535f4396e333bea0c703daed94464b2e42f7e
Date: Sun, 6 Mar 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646603184
