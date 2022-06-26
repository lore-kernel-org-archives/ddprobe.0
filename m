Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BE32F4A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 18:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656269212;
	h=To:Subject:From:Message-Id:Date;
	bh=Q5er6Fib8wzoEARcdhK5fvJd+oKE0I3MPQt4fWDWbrg=;
	b=VFnLvz0UDilb5E1SbTEO0d+TLCWgNTK8PQMcATRvvhS84YINYyUYit81ktph8Jf4
	E+f97vhUCL9m1y9YPfvJl1vuDnb1L/J7cCf6jicrszImb0L5NwJK01S2K2S308a5V7j
	SRM4zXREoW9uCwiJNqQ1JyQlTYKjv431hPFBrTQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656269212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q5er6Fib8wzoEARcdhK5fvJd+oKE0I3MPQt4fWDWbrg=;
	b=RdNHE/jUFgprVGyjkky/gLGYNvDUPMxkjJjavIUB6DYzgvRpIqFraIJ0bMjAKTbQ
	efjImbVP2DIC622vFUj/Xb4Jm6uKHyF+6AuFHPTxmajUA1GrZizdbZltLuNLi6mjWx+
	y3GAuMBomlAT2Ts7T+YVdcDRlRZhFmTDHlYc6jPs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a1568a56-30786fef-f7f3-431f-af1f-4856a2fbd592-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7848da392a2e0fa4549fa08547522eea2562c3c505a73b7e1fe451df08846252
Date: Sun, 26 Jun 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656269212
