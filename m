Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48C71B73
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647274585;
	h=To:Subject:From:Message-Id:Date;
	bh=3HQcwtjyP4CaSwYdObVaBUKPwb2xlZk13euL6gf2tRg=;
	b=hTf5VqmgHlrPT6hPn4S0Uv6Sgd7LNQy5D9DHKpGBE3FVP4iP6hd3k05H5FE2iBfp
	j046/MFsomO73/++tiUDwolM5cixn2kRH+eVpK6yaXoSTRyeSuGwHEOWmWfFxDvcqEe
	8ghOC8ylD+gyPoNu4xtWgu6UN0AmpJufeRu4qQ0c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647274585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3HQcwtjyP4CaSwYdObVaBUKPwb2xlZk13euL6gf2tRg=;
	b=dUDmtumbnHn95ZdTrZ3swodErmDWsRTmUMPXsKBUa5Q3yPxfSbbwD8jspJje5w37
	AiEUb7qToHGGlX039ie/q2hfmQZFaO2RJXmj5wRORpfOW/wMhsz1P7KhmQl9WvvFaqw
	WluTKrUo0Lr7rOY6rbxvWrVSQD64nR3le2u++l+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89376a94-ac1423ae-c289-4fa8-96d7-932106a2edc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3568739a79bccdf3f6615222591566a4f36fc95b07434b9d19b7000abccb0007
Date: Mon, 14 Mar 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647274584
