Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31EF7A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647128485;
	h=To:Subject:From:Message-Id:Date;
	bh=DYlyvdUMe5vo/qWuuiQvVMvhwmcHQFJu8cwJhd9n/fs=;
	b=Y2sUuBpAfNUUIKge0u2086pJmhco0fUvITrgZyjWDSiPCTt53vSxYeWptCJmssCO
	beXPWwRJBEZHeMpJV58hBBGDmJqQPV/UyfVmB0reTfgTLV5eASXVDfF2xfQYfu2/kRu
	HP3bQVXpFV8t+3znzVJ83fXQB2ikm2O/fR6p0v48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647128485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DYlyvdUMe5vo/qWuuiQvVMvhwmcHQFJu8cwJhd9n/fs=;
	b=eDuY5HB2DD6xXhv+O/wDTfV9mvvG323qLcCGVunTkpfS35xmihTiAUcSpXZEQcoT
	tYcrFAwiWyUcZMTT0ghvP8Hw//p/Too+Xfb/hr+e2Fb+X6zP1Fu3VHqPn7CO6mbuvQv
	0bEZoJqFqoxXa7YqJvb784uSTdzbuW3Bx/B89Xbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f80821b99-48f7437d-5183-4687-8a87-13b65489938a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 446c294a1b918dae397cfedbafb5d31ef5494d382db33ec782a434c4950ae6e7
Date: Sat, 12 Mar 2022 23:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647128484
