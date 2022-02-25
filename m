Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE26823A1
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645797685;
	h=To:Subject:From:Message-Id:Date;
	bh=XAkgDym0c4+Wr8o+VfqtC1FM+ulihTttw2SlNDvyT/4=;
	b=aLz7c8mskV0tnwff9mVYes7afMOjByl88PU2P5CQkPyP04UHDnrwS6Nj9OoKlGX5
	N52X77+taG0R5wZW+PSN2V+WPRQmQROTNe2HDROrlaApDhe9qQoi2jeWE6VQ9pbQUkL
	E/O8Cass0hDyC4UYHPOgH3H9zvE/3ECccM1jnWhk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645797685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XAkgDym0c4+Wr8o+VfqtC1FM+ulihTttw2SlNDvyT/4=;
	b=M90DAZZWZYG4Vq0vzbNBpcU5CO6UJ/FyVRHbP56Jq/SQ8PlNQ2+4WlPtCdW5QmDb
	TDCVvGUBP85b7m41UzVTnMtaXfbKLuy+0D7eIpdi1fyDmDhpNTklk/OtFbEGdEV5cdD
	sPnnuEoMqK71vthxbsarw5/H+elnVdp6Di2sLv/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f312fb66e-a914a88d-d9dd-499f-b3c7-95065d7b1d7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be325a8e530f650479da03eb2ba6da6885a8df5b222dc7ff94cb5cd51d200a2f
Date: Fri, 25 Feb 2022 14:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645797684
