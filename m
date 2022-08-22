Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0FEB7F4
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661163653;
	h=To:Subject:From:Message-Id:Date;
	bh=XE9bNxzFPVeqWg7nwkHlG1sHucrKq7yjfhqshUaLZ6k=;
	b=NvWwAm6VqrMhc4HVurEk3xY+5H6uUGfoeh/0RZFXdAoyYL+4mI0DkLawkzXX5oMt
	8HoonYxnwNsGsck3fF0UsuUQ+8dKb0yf8CEgc15owh6wbX2dQR1TIUx9Q/Ak7t8YvYe
	0ESNdn8ww72polXe6EEbrACGjdTBouuPQcoxBtVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661163653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XE9bNxzFPVeqWg7nwkHlG1sHucrKq7yjfhqshUaLZ6k=;
	b=IQBG3ZePlpAnovhvYSAv3LFHcDkXAt4mgQPILzUfF5rSz1fCQw+Q+g4Mr03mFao0
	3i0UR1DrVOod+X919kjEHohZXkhpf3ZLVAEKJSloSgS3r0Nenj4yKGrPaYPhrJGolMt
	PKH1swRhv5Hjtg9HrdLwEDw3rFj59qfHZCsMDpCo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c511c5cd-27f17190-1b67-4419-878a-10244284bdf7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d7bc47688e0d777e69a58b150c3309972a1d6561dde9c40b9328747203390cb
Date: Mon, 22 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661163652
