Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7077E7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659456052;
	h=To:Subject:From:Message-Id:Date;
	bh=C9/r5QqhWajlP4MLf68M2bmPVWzdIws6F4uVgAAwydY=;
	b=ljt2gA8yco9gNemkSTNVhR7K7uL/0YyE3Vo20novCahmtKz80C4jYXJFgtoi3OEu
	Y1k6tLHatB7CVGEtoUwWqoRC1UqjVff92ZYNkq2wv+aj7+ORvJELx85m5SWz9Giobrx
	V1V7BNbpWnk5B0ysr5bqREvcrnd+vqZb5tSKaQyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659456052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C9/r5QqhWajlP4MLf68M2bmPVWzdIws6F4uVgAAwydY=;
	b=PDYz7s38yMa0D7/2Y+9hwBdgOy1GAxxivZrakMu2SBdYo2IKnEg9Xwddwd0OyMEw
	rSaFOA9t19WNM7CL3OikoPlRaS3tvT3yR8MNz7MnGbJkFbWi/MvqfLcaPkUecOQs37R
	3QwrzrrfpOcYn5kvlDT7q7okltuyzOO4SBmOaVZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f49dd80-31672cdb-d026-4b02-91ef-2f60cdf7a809-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f74933ebd4c0d56974b03a82faff8b5a0a680051d94849ac1091ba45bcb3393b
Date: Tue, 2 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659456052
