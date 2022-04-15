Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE5B7B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 00:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649982838;
	h=To:Subject:From:Message-Id:Date;
	bh=p3PP3q3YpemAfLDi2HkGyKu8uIvWWJW6fd65NRMmhpo=;
	b=TX64EYIKAOAAr6Rogv9K31lday+LP3et9kO6OfEgv5xganA4+vsy+rmPnXYQyx/e
	+L8zfpIF9QisNtpQhUXpvmNfXIfxEAXKb6zR3ifF7ySgEin1K/bu8Hr6FV+upy0ebit
	BzTCSzneFT7X3eeTuze92AmhASYRHwABpd3J5XSI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649982838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p3PP3q3YpemAfLDi2HkGyKu8uIvWWJW6fd65NRMmhpo=;
	b=HkP7m3Aibc053ZGVDUB7EteiKLhj4A6AjhAdtrcyx0992r4Z7VUSO6KlBJIpqm7l
	SxDWdxueQ3H2sOcB7FNK6Z7sEdWxS008IZJgMGEU2AmaB6BqvrgTfl6YUc+qxo4Gu7B
	6Q+5DRCt1ZFLDFTCpK2k21aoCyR9zVYMOd7JOW3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802aa415ff-bd023bda-15bd-420c-a190-78da04cf626f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a1070a02e56e6bb615b3d6a899c07e33987e1a2fe8b68fe77fd08a8b207080c
Date: Fri, 15 Apr 2022 00:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649982838
