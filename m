Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D4E1FDC
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 20:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653683759;
	h=To:Subject:From:Message-Id:Date;
	bh=5ijjcJI1gipWNhePRs6x0RZcV5nHHzfvRhvOYYmUnd0=;
	b=hg/JhwfsxuRfB3Co5A9D28Fz/5PXg6rnarDJM4a68xKl18z0pmlF7rHd1LrGJJA/
	edIxcklmT1XAlYyJ/Zceg3YS25vmvKIGwmOIhc+qq7TcemAv60TQySsNDvk3FxXFJBh
	6eUxSwPd707gL4k1hSjHnaNExA7n4pnAsqJHlYyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653683759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ijjcJI1gipWNhePRs6x0RZcV5nHHzfvRhvOYYmUnd0=;
	b=dVrW0g4mWi5d2aDxdw5GHlfbkPVqKKuoI713IoXlpZg+34Ns6zFvta47cVb17pUN
	WihLXyP9k0ukHlsvLiAIFOBorqMeetytx3WSzyf09oCHBrVXvpKWZFPumBuUAqvXH7H
	ahzQ0m4GkDXixOM4DuM0HtYf3+okEYPm9bR3c99U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181073ba886-11a98ef6-95a1-4188-a1f0-44a8c5a3c976-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4754bbab422b77052463268fc4e8e30db24992b6c25ba0ecd9a4252d47edbc7
Date: Fri, 27 May 2022 20:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653683759
