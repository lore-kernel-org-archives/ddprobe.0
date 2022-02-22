Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F00F66D3
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645558585;
	h=To:Subject:From:Message-Id:Date;
	bh=8+7zbsLx6QLbUk8g0mCvg7s46APtvre5aAZpp6w6oNw=;
	b=LidjJb7Ptbz4tpLbiIAJjM/fCjT0zpoSCh4UIqM3OhTxGAZzA2uD4TVDyqf2S6wI
	ZtgHE9z8Ck0XKF8wj80nGSPEjgOexwxqyWaqdjq9mGtpOZ9+vOFGw8XpIkaQ/tzRX1C
	tTZKVmAwvmWni54wZUyWJszgmfqle+A6txAJs1mg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645558585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8+7zbsLx6QLbUk8g0mCvg7s46APtvre5aAZpp6w6oNw=;
	b=FWS21vh/AF/e6karLJqvSW65rwa36K6ATw5WV7mC7hTX8X8/LjZNiz98KUhSTzyF
	rhZt09w/VStCwXyddIug2Ptpls+LG2TVX14/H6vTzr38GeCozB2X21kOGIbU9eEIbqy
	RevgPADoS2wK38G6wJWRQ/idTq+NvMvkuIDIsPCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22ef5611-d9d12bca-7b1e-4854-a471-8aec4509752a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36f0c52d6d4423b5a6895f38219421c8dabe7c88718a7037bd13d5e0dd0f9172
Date: Tue, 22 Feb 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645558584
