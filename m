Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A2BB20E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645480885;
	h=To:Subject:From:Message-Id:Date;
	bh=RC0VLX+ts/h3NPvU7vdDe446IcNCpGvigEC6hCq49GA=;
	b=KVAMtyXJSapU1WqyezNRzqjaISZe/RXPEXGbZ8n1F4CT7gnfkLLJ78nqTkCjsPpC
	1tqx5OcJIjKd02os7caBuRRBTupRx4L/tagl1Es2ogIclLFBiaajFAXgRiqYimlIqCl
	/9BIZjnsZTz0hm3qV+kH8yxBjYK6eijBoVRMsxE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645480885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RC0VLX+ts/h3NPvU7vdDe446IcNCpGvigEC6hCq49GA=;
	b=kpqVwrowakUxB1rQsPpqtdNv9KC8hjs51traiKf9l7XxqG/w8xl/ihUqsg8GKx8o
	3Ahd/jJEwH231cs2QTHkOG+jO/kTASNnsBOUKJix6FTvsYBo9GKuW72XWI3G/Ho0elj
	hkr2zt1REyYVDMm1P+yvIMD306jUHGAQ8j/jFPrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e4dba27-04f2b21f-03df-4cc0-ac1d-fb2daf35c86a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1d82db003bfe610c75ad5ac60250a2e4e604e7673099282fc167a6cf86e85be
Date: Mon, 21 Feb 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645480884
