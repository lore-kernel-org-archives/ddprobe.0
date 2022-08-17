Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33287477
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660779053;
	h=To:Subject:From:Message-Id:Date;
	bh=Qyd4VIwwo/Wy0S2kTfRYKatDevWh4FB+DdzOh2y/nQg=;
	b=ZDGln9BVhl3DiE9BUhPGBTgUFH+1CPzqIo16COpB4QdNQcFLBl8GVxHPaCrTmTtW
	JwZ0AZot0ONInfRnn7V7XIUEQlaBGtb9Q60yofPQl36ThAsc4SrVTvC6GVwL3gAubH7
	SXferRHTjNR9BvuTEjL+toRjPnnFBLMxLyzOLI/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660779053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qyd4VIwwo/Wy0S2kTfRYKatDevWh4FB+DdzOh2y/nQg=;
	b=MAp62U94DzOYtOZYlU3S6cfMXBdnNM+umU2bqHyWLdohRN5NI9p2p2DCQJbnGWzn
	ieBIndSioz3pNna3kVhMwH2rjN3fPLuOH//u8acrOIjigpNgRrNaT4Agml87KRRpxep
	l71VbsKpTBbqrmZnDkh1Rl3DFXMmVSdSzP0HrP94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ae253e63-2e80b906-9398-4649-a451-89a50ec49374-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 101bb83ff20b499b57791dfc4d5bcd1fbd4091c61cdb9137df88a3dd4e3a5aaa
Date: Wed, 17 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660779052
