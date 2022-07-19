Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED74633CC
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 14:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658239612;
	h=To:Subject:From:Message-Id:Date;
	bh=OlqGMOTu0ScF1H+fFJNF2m73Bk2MFINeQxiTJBPtTJA=;
	b=RmiTkL7fVR4tEi4wKZLbOMJ9ufzkyn8uIj9XkROBNwQq8Q+qBX5FKLEYKtvPRG5A
	Bc8TeKgia/a/L/fB+ngpZKsb/7mw8FNxOr+oXKwyn57VyWm1GdPO0PMIGuQZzZhSBNy
	28NvpF7zdPX2QfAKwL4f241ZuPAWg8POIVrSjQ2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658239612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OlqGMOTu0ScF1H+fFJNF2m73Bk2MFINeQxiTJBPtTJA=;
	b=GARYn2v9uDLcAkpNuEm60wXwgrSDTeEB5LlYx1HCva55x26uZ4Yu6jqyRfDVz1C6
	t+AAfMu15DeDzAc1ZPjXtURXvcivn++8h3W8GTWXgXEzr+or6gAYcVz7MA3c26Cg22o
	r+h8Oaz4P1ZlPMbFpDwstMcVVgaWBUCuK5pX3rz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018216c87561-8425011f-965d-44b1-8417-36201f799c2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3f1a533ef712b9960d04a2e9c56d2d23e095e22a29b79f05a6cd88de4603fec
Date: Tue, 19 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658239612
