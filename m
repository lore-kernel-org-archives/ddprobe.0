Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB1329A3
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645451785;
	h=To:Subject:From:Message-Id:Date;
	bh=cEaT7dQNIj5KVKXRiDN5H9bD0CLol+GDBUuSkLqDFfo=;
	b=kJGkyFhTuBTIrDxMlzVEk9nl7MvS1ohgbWJAzOXlagDfdjcqeu4K/OTxy0VcE1bG
	Vb/ejoXS7YnZn6JGf+HhFAOsmbNOPawGG3XrjpvIY0kSsfrp2rYShUXTsJFHy+bk+Aj
	z6g3FscCxyyWhcETvL/RUTmKFCs9XcP3Y/i+GsfY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645451785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cEaT7dQNIj5KVKXRiDN5H9bD0CLol+GDBUuSkLqDFfo=;
	b=Ps7YguE6FGt+W6DXfzsj8z2LsFIpSrT52nhPgeIuex0UsjG81wIxWPWVea716H9V
	bsEW7qMwZwolBdyUOtKM0j0hww6iH1CsBgfO6nVbnPDbWx8Pf2ixJlfQNCbCVthjmgS
	s3vkql9UsN2OuRo9PGl14v4vIDm6EYYAZeuGpIME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c91b23c-0b48a38a-97f3-496b-9303-e3a6efa8b2ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 598bc797c5491637bd2fd06134a7220e40fe0d10b8d2ed0b64162667eadfc4ef
Date: Mon, 21 Feb 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645451784
