Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B94361
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 14:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653489239;
	h=To:Subject:From:Message-Id:Date;
	bh=rndMHxtztvHBy0GEcm6sMdb2KnrNHB3HDfG+RAzWaTg=;
	b=OTnTGufcJAhY13qVsOFyPJOlowZCWt9Lz9l2dsd2ftzw63H/bBr+u+wEF5G9TxA6
	M8BO6KVaDxSnSPVBrYmNHy5q0MnY/pXx6V8YIZPKYDaE4+uIp3QpuIr00cCHfVwCFZx
	mNi6y+hGIkjBhuh45LzTRawB8JGQWoFQgVq8tFE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653489239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rndMHxtztvHBy0GEcm6sMdb2KnrNHB3HDfG+RAzWaTg=;
	b=RgUXDnNWWjCzGzPjH3tBRCBvoDXbSlAlAcRXqnKTUcJOwXM0biAosRdRjfQLRMOR
	Iz1PBBiv9tfNJ2efnfVFi1TK4oZjHy7kM8WqsXaTxtxDz4Jusl1r9U/PtTqrliFFJ6y
	1jdyt9pzuTQA4AiFX7NDiEy1yBLXdKtZcPFwA3TI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fba38523-fd82843c-569b-4aca-8bb4-8d3f398fc064-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd3f4a40521aab2f4ab5f4bff01733cd950c5ee5f1ce3d00c4c075ec87276076
Date: Wed, 25 May 2022 14:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653489239
