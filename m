Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7829315AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647569785;
	h=To:Subject:From:Message-Id:Date;
	bh=DbhoMsOZZybSPjRSEh4I29tXWNOtnSx7m0U2617+/Pk=;
	b=ag9wshOa9sI2Pp/O+8VF3yp4QGKlJ5PLqwoI8GuXGyI94eQVnBVj4zg3JmqQRNd8
	gY0R6bGgsiTveimSot2YxY1q1+bh3lYT6ODPdlk72VTYeiPLpB2TdDaZnWSQqoFcqHG
	TQrLFYYIzAGuNYTev6b5rHkjJQB2B91usx+pGjXw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647569785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DbhoMsOZZybSPjRSEh4I29tXWNOtnSx7m0U2617+/Pk=;
	b=NUfQLXvjBVfGIMHi1MRXYF6NUkJ2dEvlhmoO8MpvIsGVzyXTw3+qxJEZsT9ygh9D
	kQgK+bVJrAG554sTY3WIjINZFAuD567mENOPyIoT7rmnxlLkznyhRwKY3H4n3tKCO71
	DduJ8VbHTeUQ2ixMiMdLDimXpF9KU2lqTSPgI7+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9acfcfce-1459d0f2-ae15-4ea8-b8a5-83c3a45448e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38d388cf531fb1b593e73ecf0963d28166268be24f95c84c6ecf23aa5b3adc0f
Date: Fri, 18 Mar 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647569784
