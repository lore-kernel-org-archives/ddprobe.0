Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A79D28E0
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 13:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651498258;
	h=To:Subject:From:Message-Id:Date;
	bh=Tbhvxkn6EYmBZyDv64hLMiQbeRayPckwccnbiaj0Rgw=;
	b=M/lOr/UUGCgp8XSYy+3ZM+tayv6KDB5exW45n9cDqSY6N0lOxP3gTuwcthPT/a7D
	2rqolwk6mTeCKIp4PyBNrFG1aXtNl+RjxIFlRhz5VP1Ut1+MflxRXDR5q3VNzR35yI2
	tMP7XZZ3OiPRggRAlRu8CYb8ZkG60G0cAd03uLIw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651498258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tbhvxkn6EYmBZyDv64hLMiQbeRayPckwccnbiaj0Rgw=;
	b=MKdtSuiiaAJgxs9ccZIgd88CF44X7hcOuIYoFmpbAkFrsqtEAiNxwHcSRp6YP/JI
	E3Z3cSu6ZgkxWUcG+6RcjtaiwXce+k7vOSYC6azLvmbuIKZ/3m4ZPTmvreD0aGWVKn1
	pGK3Xo0oRbYWeqSCgWqiPdOMS0q0F+EUUtKBoPpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018084f78f6d-0823dc7a-65da-4d85-a8c6-7cca831286a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea50973c1f667106c860e9a80a012de6104841de5fd84949c16e39f1e2fc6e5e
Date: Mon, 2 May 2022 13:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651498258
