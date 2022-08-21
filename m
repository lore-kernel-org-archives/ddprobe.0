Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D21B372
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661056252;
	h=To:Subject:From:Message-Id:Date;
	bh=TbiVrJW/QNkyXwF8LsDCDw9QaK1/y/4KMlsu5YS2RfU=;
	b=brL39kgI3oVS5l4W1milF/wNx9H+0D/NuqOumB/sGKFfg6oXZjYxXSVaq0k07vpp
	ArGd6RcRPxzn3b4th89wRhrhjiTz5906/biSEDbT5S17ElwFwycReNeDd3SScfABgZ+
	LH/NWwlQZ4LqvuPf0G1Cqqj9dmjJrcD7pMbQ5w/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661056252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TbiVrJW/QNkyXwF8LsDCDw9QaK1/y/4KMlsu5YS2RfU=;
	b=Da7Ppe9TNBitZrLRUJN7PsC4A2hTjpbFEylOa4OWb/td1nqU43OH1Ru1x+3Zxfes
	FOXrmry3Vnwe0g9iuJqvjRMoFvO9X/5offyn7PNCMb+vqlMfb1ipEFsTzVuu2T9hWAa
	/4AzIiFNGuhgQ1QD41tWlEFlbShNgBuCpM7h+/kg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182beaafa9f-5370ea73-e4c9-4d97-aaf1-0a801696d397-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26d14491710ef3ca6656294e992fdf15c1f4094461461b043f624eb8e866c97a
Date: Sun, 21 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661056252
