Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE8F63B
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658748412;
	h=To:Subject:From:Message-Id:Date;
	bh=3RRrUlEfYaNi82EQk+pGfdkVQZotTs0XCPOWlGc8p5s=;
	b=INeSReFU+3Mu15+3Yqjcu2nMXKScPYqPtTU+vZeE4RqPnCEVzyQS3LMMQIo8eohz
	48H5k+Ie8pczO3lKeToPn91Fbw34iTAO2R8KFEx7bgrWtMfXfO0SBh8/lNMQRKw3a+R
	qOOsJa8HilNZAzsv13MKVGG1boRzpavPR2ZSCFxs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658748412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3RRrUlEfYaNi82EQk+pGfdkVQZotTs0XCPOWlGc8p5s=;
	b=gJOjBgtSNhfWG9+6Rway3LLwoHgDdHE+tuw3XbAy6mzhbxBOcHdIyGlalYUtzQmc
	X4Ezeq/IRCT1Es5eWLB8KP7JcoAPfURPsDXCEovmRCtfhCKvPlW5ABalto12VBGhft7
	gPEvD3SpZ+gb/qTWD4J978LSnVcUiXk3v8OGSFek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182351c2158-de25aeea-6869-4c31-9b6c-9cc938c10154-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 475238e5f9116b08dd34e92443fd9543f48f000c5d4800339284ffc80287140c
Date: Mon, 25 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658748412
