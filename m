Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092DB371
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658734612;
	h=To:Subject:From:Message-Id:Date;
	bh=B/Pmb8oYYEptl9hXlQ2BkEIiRGlGIknIdaXB7dmxOVo=;
	b=k/p2b/b7uiR3ugIsrKRExlsb7cutHu8Ho1mZCX1ZxYQ8nDSaTxg6/3ik8Z25nJEo
	2WdHb4ovntJ5UdJk47HRjGIT7Ya4A7CtnI39j5mMMFufycylZDiMLPysvUZrsnZrlVS
	X6dKVeS22Tf6VPUGG456fV97pdd6EaGPiV0dd+jg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658734612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B/Pmb8oYYEptl9hXlQ2BkEIiRGlGIknIdaXB7dmxOVo=;
	b=AYF8TsYwmkrO5VE2wpPVhhN45f44RIJwXmSQMcLiXZIjrlDKIaJHLzMINHHLWgd0
	f/SPNlBVqPvx2cvL+CrJrWbja25y5D0twV92MTY0a0hdaculOfrKf6oZ88Ea2Y//M/m
	S2iYtfdKNc7eDk7ae8uuNkTD6hFJDvbzBhvSAc3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018234498f50-0052b239-3cbf-4f1e-bed2-26515a02b7da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f44f0715c6b4dbbdac4c9ee69f304611d6aacdfddf60f49ba0029ff99a37242
Date: Mon, 25 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658734612
