Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB0C3229
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 23:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656372412;
	h=To:Subject:From:Message-Id:Date;
	bh=GO8FbCsQr9xr74oRWHFb+3u7BJU4NQbVrovWZwGi6es=;
	b=hNSowqN/rAOX78716s63BhK9BHI0lwS4J6wiMDFypNJeTtRDAf6+6iHltp3Nbryb
	ucoTMY9zyNHCtIDxKNluhjKBX1LyqZVD/oio0Ow1Z0gI02+bch6h1B+1kgY1D3rYRKD
	28IuoTuq52Ruy/ur6g+E0a3eLt+YHrc0JDTqIcnk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656372412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GO8FbCsQr9xr74oRWHFb+3u7BJU4NQbVrovWZwGi6es=;
	b=URlEfCrypm+AUkxBFFABEmPeJVjbt64bW+toi0sw73WXqQovKAwfFEdlnf7IDYoA
	DsULQNpyGMezFlEWYvaFVNJ1JfPmAn/Rl/IYOGNomkgiMhp+OhwMDuQfxIqEOxCbSMS
	wP2WbjLA/6bEjxImB+iNiltY75h+xYWUFcFZai4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a77d3fd2-ab8769f0-dc28-4121-9dd6-d8e3d23f688d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8f81f196c3be30dceb66b58b18d0e3f035418aac21a820e385c71cb3a81f4f2
Date: Mon, 27 Jun 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656372412
