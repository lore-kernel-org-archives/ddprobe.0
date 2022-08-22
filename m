Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358147F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661150452;
	h=To:Subject:From:Message-Id:Date;
	bh=51aJdfQTfVZsOGpX3CU4qVbq6p00MuMzNRS9OU5rC8M=;
	b=LzTw4YuESnKHZfylpQDizMU6tUC9vK+xNPSiJBoneJfDRrJxiclPCXqPJk09YY6o
	XOVxv44DxV1DrpoBD1DpRO5aZowL0VZGXZkF+q0J3sg0XUkbzKV8rH3mYknDbuAsA+2
	0QnqidmZohhn5HR/HLvwh7JLODBiDgK6JQ8bQANE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661150452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=51aJdfQTfVZsOGpX3CU4qVbq6p00MuMzNRS9OU5rC8M=;
	b=WWq559sZ5tSjNPIm2LsEDAKBS4NOvy80wKe8rV3mlw65xUXJr3OdOLchzMuOs1MJ
	EhnY5s4Th0PjRFBgBi9sXwarxdSqwYehOwAOWXNRLRav1f5oPo51UZlP0wowj38AK+M
	ESL9oTvD0LLvkEFuyID8M4WAh4FdShxDNSHQacsI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c4485b5a-a9908c97-3c23-4aa2-aae7-870ad5c1b79a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 389e2b4ae4687360b404b447365ede8130ebe66f231db770d23bc8c0d6550808
Date: Mon, 22 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661150452
