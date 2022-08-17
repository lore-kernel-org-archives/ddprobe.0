Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C18B23A6
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660710052;
	h=To:Subject:From:Message-Id:Date;
	bh=oaSCK7fPW5qs5gGVJJeG9hFPMxYTboqDX0e3MPzHmRg=;
	b=QQt346GRH4o3YpI5pLpEsEmzSArgy01k7/mgDq5fvXFc43p0LYrw40jqVasVsxJ1
	wJsGdu/wKkRwrtBIfZYeGNE4CIkZxotN5ybgy4o2Bz1GcZL7Ht2TWNil38JN93BFSQA
	R5RH9LS5a3PTUhYJpBUiWHCI9ou08xImWcfbmmdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660710052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oaSCK7fPW5qs5gGVJJeG9hFPMxYTboqDX0e3MPzHmRg=;
	b=GHN4CkekhvCQhfU483Xbn0Ny6qoSFPf5WliUlq/iqHK3TsoP7GAI+2CW9WnvWd5R
	HZQRE4Y2bWRHwxj5N72bznkIvPPahM2KtgMUfqjfAxGqgMZqzDvuWnpx9Hz4gCRLbZN
	aKHmwGsxq0CxriuLpoyb32dI5ij7LSClqOm+ymvw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aa086311-5fbd7b5e-c452-44a6-afe0-06667ae432f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69de7cd807ed499c11e11392ca4cca8682c860c7313a4f07339beeaf4f6a6aab
Date: Wed, 17 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660710052
