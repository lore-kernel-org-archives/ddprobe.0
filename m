Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0447F3C37
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 21:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658178412;
	h=To:Subject:From:Message-Id:Date;
	bh=WTdLwKio3lAdZiBPmtIbIOaHsjYGBCL0pi34+e/kCeQ=;
	b=TyDpaYlSaAwyhKHQ4WFm06yfiEr4MEZD9L6w8vec7NhlzPECnf22Wxd+s/vJcI+o
	TtodZipXaOIAZMBl3DGl8h/9RkR9gKUpDYrdr4m7CieXIkd6vDYP2OiQSyL7swMnByl
	gUPxSuixW1FGUtSUN/hAE0PhqQFLYwpC9EMg7EYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658178412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WTdLwKio3lAdZiBPmtIbIOaHsjYGBCL0pi34+e/kCeQ=;
	b=ayzu3yvQ5ju4zAea0+tHdZC+/3qjrykp6u5h/awekcQ8pYpUCmRJPE6Jy19uv+yD
	NoyMFW3YP8dSaaCbJ2hRPbIlf+wUML86gK04DkWFc8lDy7jS9DqhPj8jwp8LLK91P47
	iBrX6rrU1RNmuIKpiKA1v7ygAaC9j9Q6AqWWc1uI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018213229f20-2b2cd977-039f-466a-b507-26e1419be6d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e8461a307d24a52ea625fa394a1e8bb829d55a76867d4520e4694876bf807e2
Date: Mon, 18 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658178412
