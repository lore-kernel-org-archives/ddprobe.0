Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ABA46A9
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 07:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651304158;
	h=To:Subject:From:Message-Id:Date;
	bh=CCmD/rh4xQggpo4ppN0kKI6YnAjMUNFfZEMuMvYsutU=;
	b=lOOdklEIa2DNiYhU7rfkhUadLPDrfoXNXEDJVbZlSNxFAtEVj75sg+x8bHCCxFfK
	+nivTyqQrNOb8AIVvhgCDRi8KQPXdIquyzxm0nLLMt6EiDy32kHcQ3UO4vMf88n7N7x
	IsQwE63FVwRAqTwa+HlFaLvT3SrcQ7aWKsGq6Z1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651304158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CCmD/rh4xQggpo4ppN0kKI6YnAjMUNFfZEMuMvYsutU=;
	b=TEbC/itpM6u9gH/nYteqy3xDjmMaCxLwvKf2GeNLsBXL5aXD6FxcKE+CQy7aYvpo
	6mgdVNs3Xnk0m7TqSHXdCz/6+oBjtsZEXTlHuBOo5hwB/3hMNqASuiCM43FfVdcQVov
	Fx3TdmeRg/ujMCXPPnI0+9vKD9HzkhPJgOSpXgC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807965d44c-0163337a-91d6-4021-ba82-a13df4b6aa1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52dd72b90c68b58fe072e71de1c3706c07cb5d0592f88ea9bde3f0922f031c22
Date: Sat, 30 Apr 2022 07:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651304158
