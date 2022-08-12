Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B047638
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660297852;
	h=To:Subject:From:Message-Id:Date;
	bh=fGuK5/XUjhSD31NRcKgiOVRME2aEbOrRnZMitLQ/6DI=;
	b=NP7uxs8fBUJGSe4xALlQnUd2aJj+Bvkh8pD7L5yQ1FkogWKRLc3k6saNjsV8mQbh
	1vA7xOUftLj/lC4xGmrm/bCmzpqc4p4j7AJTufbAGvAsLcxFksIpZyvw0E1cyOeTmmi
	XRpvN2JGWVZw7wxSM9vxX6rWlf3C3Wuf15Ijf55M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660297852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fGuK5/XUjhSD31NRcKgiOVRME2aEbOrRnZMitLQ/6DI=;
	b=T+Hj3QPGFX/TBKQ/o+vcztw2Y9Sk+Mi9+LevzQ/Z6coeXjId3H/7yqR/npVLnolO
	5Ah4bKFfNApzF6KM+zYS/ENCrUctXdCY6qDnjNiEeXxSnWX7mY7GBxEG22bTffuaVXe
	V7HtGbGy5HS8mM+0strmWsagRDb4qSPxllBRZD/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829176b683-4c2deb1f-db72-49de-9cec-558619b5fe1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f6705cdc08f9b30858f9ca796c44c64c1d5e44c0b41367aa24a6507f8a5858c
Date: Fri, 12 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660297852
