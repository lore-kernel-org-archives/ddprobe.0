Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252C47E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 19:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652038438;
	h=To:Subject:From:Message-Id:Date;
	bh=IA8aiCzMY94Ha81/cXrHj3gZQi43MOrXKCoAaOrOT1g=;
	b=A4YU8Nle2/2JsyjR3pYHw+PyKIwWuOF2SZAGccwqF0+u7yDuyA2ECJ6LMhN9vVQ6
	2smEgsjYH6Q7RWBVU0wux6h2olMb/LVaA97VNzE1XyJahl6ZYElm9zLpqvsEBeZA41n
	c05C4kTwhwoe1QzSINA6pQpqisDbvWmWc5zBuz8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652038438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IA8aiCzMY94Ha81/cXrHj3gZQi43MOrXKCoAaOrOT1g=;
	b=SSZ4sEhdMtXP0nzwEaovyA5yz8WWby/dLIlE/wFzcFLZ+w0vSBoSd9wQKDZHGKO5
	Hka26n0I19CpQTqh8DAp/MrjMLkJ8O3Wb6eM8CILED5wWL4/tSHWAgBSimBTrD47KIO
	14tSBKRSrD5xj3gxl1BOZ8sHddcmNIQpAsAgcLGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a52a0d93-529f1793-7d63-46a1-aaeb-3424e6c7bd50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6056252340fad41348194fb09a7fd6c3202f7042f680ba1b38ece79638ce3244
Date: Sun, 8 May 2022 19:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652038438
