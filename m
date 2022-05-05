Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1B0259A
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 17:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651771199;
	h=To:Subject:From:Message-Id:Date;
	bh=mlrUSxApYPmeFbQzV6HZmyvO6Tz5+XTyBFOuHnA/BGw=;
	b=m1vHRzXYAdio9+aKCEAEWdaQVttueXCBrT70SLSthPbjPH/WYiV/cJ8buzwEBMP0
	mpgJeItLJn70aa4fkKuTd6lfxlPKeKCee38QJkfq1pgWJUAV/sBnauaBIaw2BEz5tx5
	xrrWYAS2ncTDoOJ6irzFhLCCxPDa6dsNo/CMTBr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651771199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mlrUSxApYPmeFbQzV6HZmyvO6Tz5+XTyBFOuHnA/BGw=;
	b=NuQkuYbuwKPOjboqxVgy2eFK9OPv8mBepXUwvqFi9b9wHH+uBW3m3VukUYJ4wtsj
	LWslneLoI71+LZOD0xGlAmFJoGaYMM4bnk702TAL/8WiKgmQ+BTiqno+4d6uYqto28V
	FN1OzfVzfknHz9heQ0jRWl/Xu5m+FRkOLeBFgTzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180953c4b5a-5e208b37-9762-4746-b521-7adfbb18d34d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8067a0342a1aa36c008c9a299cdf180117cafc8c7dabc50ba4ac6c37de7c5b6b
Date: Thu, 5 May 2022 17:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651771198
