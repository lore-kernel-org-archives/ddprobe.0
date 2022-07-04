Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0829828E1
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656945412;
	h=To:Subject:From:Message-Id:Date;
	bh=WbPHg2WDFJoerc5Gvw1IbI0mx0fU8TRtEkEQSk4pY+Q=;
	b=M7QZZbHpMemX9itCgvX+CrqgShLrsYJ+Op2MJOrGKok+pZmt3dJZd1rO6r8/odG6
	hmYZcWF+58DuUXchVFj2LBYUnvtKOQRKcTCgWXoZNTp9OZVN6HpT4/LT7Jd0xzmKHBy
	5DIaPqugC6aQIdgFuZVN9LiKPMUoYsqmNNaH4i9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656945412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WbPHg2WDFJoerc5Gvw1IbI0mx0fU8TRtEkEQSk4pY+Q=;
	b=ZTraBWsA7dv04BMpb1SSQSg1H6+nhIL/tGUrAQIIWuieK+uDLUef2d9MDPbXPRf+
	nvjheJ6SAtYLXARphrt44GB4YbhXUlmkGfHNB/TAs/UmJlFAQ+J24gRE/9ptVvaHfWI
	PEqtv3/uE1847yytAOK+sIU3cHzbyYOFqZs2VWm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c9a488d9-a41592c8-2fc4-4c58-8b20-1fd154aab571-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c53d1fe5656efd7e81cfc839c5089716dde3fa1dd18eab71b9f40e115926e284
Date: Mon, 4 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656945412
