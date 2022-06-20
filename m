Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42317F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 08:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655715299;
	h=To:Subject:From:Message-Id:Date;
	bh=luMvUSU5m7xbpcZHBxozYFxjnVjWxDceVjv0lQjuaCc=;
	b=QpZk+RUEi0UKGTLYctgOLPA6HndetnY3UvuwbOKxeSOLdY0bb12JqWHW89ItZwmC
	pkPSL9wGxPd5ywcg12FGXgWHmwa+1z4OGWHCDvlDbuFP9uAHz30BoJkyILQKJXNH8U6
	GEYHqCwLm5SVRUfR93EvQAblWDLkRq2rQGxJHd5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655715299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=luMvUSU5m7xbpcZHBxozYFxjnVjWxDceVjv0lQjuaCc=;
	b=iiPLehjOR5FvswNM02MfYRAD/nbMBAe2zZV/B4cFaJqjaPsC5FGuiE5TwoJD37Jk
	d2UECb54n72teUs69w6tepzywUoFBjozBcIiLgh5S6HfILspkgzg9Ku5yi5tqJqWbJA
	m6eEyaRNFVL1zCQOPC+CCB7umGz/WOrsipPwEqSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018180527f77-23033d71-e059-4331-ab09-d50706a5e5a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24cc91d5834f87477e3a8eef07d193ceef0c0448fb6f77770ad1618ab8d99b0d
Date: Mon, 20 Jun 2022 08:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655715299
