Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2952F22
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659105052;
	h=To:Subject:From:Message-Id:Date;
	bh=A6pOuBlvInAxhtMs42QzCV0nLWSivSRFw42sVZAhWUY=;
	b=gxikyVYrmRyvWWPRLIbBlCYfc7X3Jj2Pchzileyy+3Iqsv1S0q1614yftGo9gPjS
	AaEk+k3rS+B1/tq0NNQpwoTUv6inCm6PLbiIxHYmxLDXhr/RIzTu1e/jKC1WlbErl5p
	YloDPbOusaZ7wYauRJFX0Le1uw7sSP9qpLQNLWZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659105052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A6pOuBlvInAxhtMs42QzCV0nLWSivSRFw42sVZAhWUY=;
	b=h6QokqycsTGHHDvpwq83x/b8+IE0WJ810DK9MNWCJInebyYNWnEYhlUMv/pFIEzN
	8lz7Cy8xCekY0hOwcSJRwDCdLLEqwsehotmJwxlrXVA6fEwI7cYHWp61yApV3Mk3AnL
	L69TN6YPPTCf/Qn5e0VmyYolD7yrrqKAa42/qAgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a5e075e-ba3b7c87-08f9-447e-8f1d-e7a52a207e12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 890bfd9083cfa401c14c08575283fd2639e5fbd97d6d38439b36e6a48d75a498
Date: Fri, 29 Jul 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659105052
