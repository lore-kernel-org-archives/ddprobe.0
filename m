Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A05D7A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 10:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650711298;
	h=To:Subject:From:Message-Id:Date;
	bh=4Uo/gIE26mzTttSLWcUTiL+Y7daB5PQ6aUV9DuRHV2g=;
	b=MCnCi6zjvLEf32/5ZWu5LfLCQil36BRGwoNdm9cZoMYAa548p5ylHiIz8Hgo7Zln
	hMMi4JtFxgPtZkeNji6JbjXyqET5LJDNSOcIGuymFImEzDSl10OcHqJHjfdraEA5yb3
	6SCA0JAno6GspyoMu0Bdw5HDyWnmfrJN/JByjTxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650711298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Uo/gIE26mzTttSLWcUTiL+Y7daB5PQ6aUV9DuRHV2g=;
	b=A2g3uqBICjQLAtu5kpYux3zJ2e2ZYNBIkGBOxU5Bi8wW4g/H1lFG2MpWoRdVrw3V
	TezPpr5EzuFfgQcGek9F8sCkGzBvHuYFlk36wCinPe43H/Gs45SuPOCSFnH4J5vy4ur
	7KyFIRUmtLb0npfzAwisuGvQFLEHoPkUBWHIgv2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180560f80bf-db339a6f-f1b5-4d56-b256-758531f390d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20891052570f233b0c1498d14d4c589863b558d487159e3c93d44fe2f71abfe0
Date: Sat, 23 Apr 2022 10:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650711298
