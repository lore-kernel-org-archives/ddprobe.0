Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7A72F21
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646325684;
	h=To:Subject:From:Message-Id:Date;
	bh=4lZ1ifOqJEeHwALnYV9PxSniP4Nkro7pkYVK8+yZHZ4=;
	b=KK6c3Gvko+D9yQtrI9SIFCpNLXrTM/WorFinhbHezzctSXVSb5d8Tb2jChv9PgmS
	221/+DmwyT4+d71JM9ELA0IRuB9vXT7x/F5NpSdpUwXEakNs4OORsa4VOqLLaYO2Zyf
	nA6fQUTY+MkgfjT/aL80NJdLVI/ao7R9ho1mxmTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646325684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4lZ1ifOqJEeHwALnYV9PxSniP4Nkro7pkYVK8+yZHZ4=;
	b=Q4EPWclIxjKKPRlz3KihB0frBZwluvfkgvss12O6Zb9KDRmbHAnvDf4BxXuSryBS
	NvPEm1kld24EOM6XMrMsvXQcCIqNW9ZJPlwq7ZaPEZQIMqwCKbwwkxt6fcbUp+wPgif
	9J3h6oMV9LxVsshkd6oga7yowwpMcDb7E7IHc/fE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f50a85a2a-8e01bd9e-d00b-4231-a7c6-08a587b86bbd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62662f21b79a065306c29715bca0f10f5a09c56285b6f76d12805812f2949fa9
Date: Thu, 3 Mar 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646325684
