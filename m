Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3189A3200
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656261412;
	h=To:Subject:From:Message-Id:Date;
	bh=LTyr64lvzpkC9VKY0iRWqSBkCl3Yp6XUoZecOgDCmT4=;
	b=fvdeXbN+FKdXn7lxdSFlTe3uGLhv3jeGG43UT1hyB8W2itNfTQCzr8Uyx/AmVd5J
	oSnaYm7DuFlUAV1phSy93DFOgfq2ZYrY5Wdp1GUhWj6t5XjZ/+HS1+hw/Dt7b2GwpKo
	Lt5E43z+hxh2IU2tzy+RHUgQM2sY3sL3qa1gAa7U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656261412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LTyr64lvzpkC9VKY0iRWqSBkCl3Yp6XUoZecOgDCmT4=;
	b=WC+X63WC2JSXHP5zR/6m1y7tP+lr8WcgLttT6sDlCxAk6eJci2J0Jei4SeUSPIbG
	cX4+VB6Nj4RW5TbS4i5wqlPnLXW13YzHFmHcPPeZlZqbWfEpWPMkD2Xvq1oSXv4R/jI
	dPm8DwdD1HqxPNcSmrJuPHTkRep0bsHt+TfxL8g8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a0df861f-124a75a3-49f6-4034-b75a-f93ef44b1171-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02ae84815aad49d4f5017d80219d9c5f221185c88b0d8d61eeeff5f117ca2734
Date: Sun, 26 Jun 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656261412
