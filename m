Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7F1110A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 08:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655886419;
	h=To:Subject:From:Message-Id:Date;
	bh=Jj2JAKcTzA5nP994OtH3+c28/QFxzcMdVxp0W+lRq5I=;
	b=EHF1NgLpp6inm8sNHIP2LaHdewCy0vUdvT7aW6tcNMsg5gjKHsNOgwWxbdMDaJyo
	jv+eSVljJbkLszWf7fH4/8FIuFVG+wsj6aAhgzzZ9mHcGBQjR+7E2rGvcTB0k1U1W46
	Yum9z23yj4nz5gXMqCxDOR/971pCiRlCMKZuvGT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655886419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jj2JAKcTzA5nP994OtH3+c28/QFxzcMdVxp0W+lRq5I=;
	b=G4rmljIZO0GBLUs4ZttnznRu88gCT4zsODtVOkjriEOyqD1hAIhTq2AxZu5tLCTA
	AaP8dR9f0q+PlEKk50VWmep4RbIvP7Pd0eGJvg+k9uXOSfrH9R86HmAFnyX2chbsY6u
	dk7VF1nPwun1h3voB64Ke5FD7fGW0KsXrDl3aUZM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818a85950f-79fcb8b6-18ae-4396-b8d2-dd466db5d5ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a5343ad67cd7b0b0c058e0df2af7c707830531a459cdd95f28ce2a347b9a60e
Date: Wed, 22 Jun 2022 08:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655886419
