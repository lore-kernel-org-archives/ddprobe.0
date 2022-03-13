Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F727E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647191184;
	h=To:Subject:From:Message-Id:Date;
	bh=MzXZtR8c3+ME+uq1QoxrKVMq1vRxmWcAks1tzvo+NVI=;
	b=VLkkTEKwY2lLpV3J1wdfQ9MTyg2dj4CSRykeehTsmMGplp2XDT7D5C4qg0unflaY
	a0zTvtiWwpEEFaqvqDxFAIkX7umVs40uALzwdRB6fkOkxWiwdzcyDKWQa86jVN2IHvN
	XOkMsYfDN8jDm49ZSXfT4RpsnWakrGa2DxjFeUEo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647191184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MzXZtR8c3+ME+uq1QoxrKVMq1vRxmWcAks1tzvo+NVI=;
	b=QcGantzQcRLbwS0LvmIkEY8FGhX4GgM2vIIWFm6SUTcZXA66npVsvWDl4XxNhCoJ
	VTdOBKEtyWfRvKMNHkxohW0/ezCGVEaMpN1EqgnDNwKQjEbmrD3uFMyr+iCOnv/X6jr
	7WN+IWeWxuRa/8bAnFWu0dieNqxZhLM6xEctO35I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f843ed555-5f793c6d-be33-4dfa-bcf7-c84023aaeeea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8462a11980149b64cfba4ce7fa303d39462f8e08682fc2bff8351dfbd4e8efc6
Date: Sun, 13 Mar 2022 17:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647191184
