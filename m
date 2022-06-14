Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A0F185F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 14:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655215499;
	h=To:Subject:From:Message-Id:Date;
	bh=u13ocLNDwVDB1Z8pASBIbvgtT84gqEVnBv6yxt2rWCg=;
	b=DJAnrtkAxSaorPgfFEpLy/wY25DMtwM8FSv7wIJChO2ECE+GHjy3tpVn8HLvsf8d
	m/h2RIdcy7/fONDpV/CMhtWeVkxIF53kGEMU9dE4EROpkAuPgmEdwXCRkySvRljZ+DK
	aN3eh3noMaBCIl48rfFATU64mwrVj3Uz/0lsGHHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655215499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u13ocLNDwVDB1Z8pASBIbvgtT84gqEVnBv6yxt2rWCg=;
	b=a47oY5ZV/IU6Rr8e80qoTAiUMryKh+XPTOvNQ7MuYNuHaKawvUYuhBM+pjboM4ko
	P1ffrynR2/qYYyUkTS/JuI7g4NoTYg2eWGZ/dwzcwSlFQoty2o3mqToNXyPrnooz2qd
	lnpD8IyZdnaMT2+++GKL9/WKiLqsUVZ0aJP2acME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816288283a-7b3106b8-2447-4cb4-b997-271a757dab64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e511790791bf9ae5b548c218304e91770750fdac12df9423736fa27ff07b32d
Date: Tue, 14 Jun 2022 14:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655215499
