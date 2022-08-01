Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABF67F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659330052;
	h=To:Subject:From:Message-Id:Date;
	bh=lE5HNRcXcQWRutysYME43p2T1tKTLUfbm2ISRIcnfPY=;
	b=g6UMTCcoz2CwRFt/kRW/OTaI4lE+LCHzcFCTvvw0PHbuWinJOLilG+YezeEIutVz
	Dfs8rHMOpyiulFY9iDzI0r8VpioVYxOqEpq5aahy3mZzF76bz8g9L8afU2VJUTM6Ehl
	uX1zrAa3rVqx7YRjEAYbfOn3kVsNMsPeETiHEozQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659330052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lE5HNRcXcQWRutysYME43p2T1tKTLUfbm2ISRIcnfPY=;
	b=QKY6iEsMIw1xlnGnrKvyw53evGkhSqZVUfW2PivQ9rAgLUzkTbNTkarhV0CDKzqF
	u4JPET7PvnDno1X4+vCxtlBfYNEv1A+CgeN3WAlE53YWBHEMRiUA1EA5FieQVSIncuV
	GsWcZCVHZtfD0phiv7yy7M8KpjQeuW6vPS/CAHo0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018257c741d7-2ec0411b-e38c-4662-a0df-cce79d4044fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13b12e764c8be3b52dd324c05d8268268a3c3864d3a5fb9bbf64fb69eab8685d
Date: Mon, 1 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659330052
