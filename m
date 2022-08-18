Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0DB7B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660794652;
	h=To:Subject:From:Message-Id:Date;
	bh=YI53bTsTaDqwrFWGAkhDLysikIFXKVIRow0zMo+lzrA=;
	b=ewjBkh/0b1FQM1ztFvV48f+2IGmc3P0RtFOp94OLPTsTE44CyoGg7aNimaoopzWA
	XalM12FC43WlGK+qHRKT44M1jeJGBOzS02Edlet+EjbqQjAsiecOZCtQ+nBF8n1AyPR
	jh9PoetTjeSwqWuLC2e0EvLcYdIyi6P9ek9LeM6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660794652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YI53bTsTaDqwrFWGAkhDLysikIFXKVIRow0zMo+lzrA=;
	b=TG+jcTdvLR3Q1NKFP7/Em+9gs6hPn8D12K+MGrwZ/l0labHCVMSvzSBVB8l/8+qR
	HrZqnS8FDxlPTGq0xmqRhZlZGhKDPNB5ntfoYei8lum9nhUKeJvSh2oM6W4P1odcK0Z
	TgqsDx1fKjuezL5lwtcg1Hh3MenewPjxPJLntbgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af1347cc-f0551ad2-6a20-47c5-a128-1add5d724a47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af570aa0bb4835748c12c69e176b07d2da36039eae446adc0161c9a42d8fd219
Date: Thu, 18 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660794652
