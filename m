Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF9C7B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 17:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650044398;
	h=To:Subject:From:Message-Id:Date;
	bh=Fom1kl9DK4LW4aFMG4QO0J4eEcHcj8CPbsdQf49OTcU=;
	b=VJO5+XSsQF1kzOLwpmbdtf4dLjAaJT9D5EMKgk2goeGMcbLq9t4htD6Bl8s/0Lke
	PdzsHRfrkLthljKgm9Hx2tLxTB8meG5sKgsPV8uBTPhiougUpNoppvLKevOYsvrKTrB
	CpgzxchnJdtBQE6ww1CgLesWHNQFQsJRHFymzTko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650044398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fom1kl9DK4LW4aFMG4QO0J4eEcHcj8CPbsdQf49OTcU=;
	b=ca8eS2B05nQ1APrEN68TvnbNw7RCWi65859d5XqDaUoJxB/V0YFna1MC/dMAvAVN
	uk/xBwn3ghhhhuVMu2vmwvpBv+QG/OYTKrsyiVdfwucv/R8U2XlLsToIIndqaP5/QnM
	UTCBFG4BRZcN5+nCFSAHspFAHnfeMxqlxH0RTko8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802e4f6ad6-63528a09-00a4-47b8-bf44-7e92dce39fbd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4350394d8a4466699125734f87d75a6fec467aad27ce9fb197fac0105cbda2c3
Date: Fri, 15 Apr 2022 17:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650044398
