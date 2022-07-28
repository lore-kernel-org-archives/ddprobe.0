Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478F1137B
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659007252;
	h=To:Subject:From:Message-Id:Date;
	bh=d+MGmKZDCT/H61OeLMcw9gVYusFzM6L83QQSC3lJysI=;
	b=k4DMiF2rLI5cOa2YC9grhr26C0WXc1AlXHBpXWKJaO8TPiRhEfuBvCBUNCKxXCz/
	SWY0zK30TyeNJkODEDXnOy1HRl9UW18IHMZEZHltN9xfj+d0ipL2rcXOpTQxzA+XHAH
	h751afE/I+zGYLJwioj6TTyF/BATak2WqTH3+x5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659007252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d+MGmKZDCT/H61OeLMcw9gVYusFzM6L83QQSC3lJysI=;
	b=W4885CsKC7vjLXVEh44rX0pDSUTjeJbIEVbtIcfo6l9rAP6rcvXHBM++l8vP4htn
	/M872alFF0aF32FwIGV0oipqX8FmyLqbInMdQm0eHGdaU2X5PbePRSS0YTAgj7ZDagC
	m0gvMqh4ZWJDi1RDPRKyo36x6ioXIvaoo5bXZ4/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824489b82a-530f5d72-c4fc-45f1-94b0-3d28ed3a72e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86087e6b9f8ca3ec9cb38535ecda5d99cd805d59de88607179e34436d9ee0067
Date: Thu, 28 Jul 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659007252
