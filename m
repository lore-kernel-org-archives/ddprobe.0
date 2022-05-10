Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DE315A1
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 00:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652140979;
	h=To:Subject:From:Message-Id:Date;
	bh=N1pFxSghxOHm2oDKfJWpy93eS1GUKJamCsUgEcGaiDQ=;
	b=NLYxSLqL/BjNUtb6Ao+i/geOqvWuuY/z7c7RuVwYHoy4dH8WVSkNzFUKRoXmAs2r
	uVLXlYZv9ICYGcrkF9YKCXW9TybAmp4Nr+hB6pnrPa0dxJXewXlXFUHeNqG30mgGch3
	dgP3T+aADakS/o01g463nsa8JkkpayQWDNo81fj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652140979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N1pFxSghxOHm2oDKfJWpy93eS1GUKJamCsUgEcGaiDQ=;
	b=XiVSFY2HiMsWlcp5zw3lAUAzC3dhtlgStKTAxcTJZC9d7xkcNE+Hil2WqgSK/Eaz
	nB/u8CTkVcDIe6Hltut+7pTAOVUz2wrPzM/WE5y4am5eT2P2zqeFSQ0vDfYChorjdZu
	h7iTdQt0tJLQTTVsTvqa1YD7PFg+w2P3orElP21k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ab46b450-646a3d84-ee56-41a8-a957-6147f8e497d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2e332ca96d4dae845ee2e05c9d90d125b943c10ea6bd1173e671722460caea9
Date: Tue, 10 May 2022 00:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652140979
