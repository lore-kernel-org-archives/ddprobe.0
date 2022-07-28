Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8501101
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658999452;
	h=To:Subject:From:Message-Id:Date;
	bh=+5fWFYbr9Mp87gLY4p5ByU0ucM1BdHUve8pVJF0LKfQ=;
	b=G1kceYS7vP0mNTFZcaQ/Q6IbWsE4Kd+vj1kTZAc6c2HkFX0rVDG+9VKxYi54zcsZ
	ZHmBCN70y56rA65lWSunvQIaGrHaR4aBZGDrLy0UJMlexYzvJqiU1Y+P8y8C7+Ks6sd
	DjBcCCrKUb6LF+VnXJexJoDro6rCKnsd++w4xdIY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658999452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+5fWFYbr9Mp87gLY4p5ByU0ucM1BdHUve8pVJF0LKfQ=;
	b=ayRWiAcWYtrFamxEXJo/VxglZo7p8AF1AspIlWnA2uXraqSnoRhjot889fTmo5Nn
	Hha/UNLW4sxE+sffR84BrwsBMaxZX7IWw0St+En06d+qjOiHqlQ8hOvvVdKZmCInCbl
	NerQoVcHeJG1ycGaAuk9AEGYWqc9BiniCdtkiiHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824412b3cb-3caff60c-4a17-482f-896d-7ea0b4aab294-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23819a19f7206580026715eb776d419a7b0c48f0c2cb5ad2e3643dedaf894783
Date: Thu, 28 Jul 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658999452
