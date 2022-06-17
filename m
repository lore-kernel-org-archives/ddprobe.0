Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF504C95
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 23:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655509199;
	h=To:Subject:From:Message-Id:Date;
	bh=QBmfjAx+AfmNLt1IvjdhUBCFjsl6H/LiLqNJN+AEyVQ=;
	b=LCr+OFJlGJFU03254/n/btM9dK1jPwPF8kFTCHJLd01Rcfog5Q6X/VTxGB31++/9
	DBhpolYgACNtJ4eG1rT90Nldvx7YL3WPqtbW5SzJnITUId8k+G6rth6TdjZpXZcY9M9
	vZaiIQz501DXMmfXNqLZk+rvCg+ddPzcbzBiQd3k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655509199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QBmfjAx+AfmNLt1IvjdhUBCFjsl6H/LiLqNJN+AEyVQ=;
	b=AqGQkxVap8JtDQMyBybaHgecSFdiP8FEGREZWG4qDD5Mfntzme0S1Gc/Y/HOuWCX
	t1hFUf22n6kbjZog7LmVKF8gDH0TIYtCrZHheWjFiGJpq82DIxbIjhiQYTkbH0b2bBU
	DuXE4/BowWF6p2YpudFpMaemmb2eMkLuNxTWobtg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817409a99c-3b45dd57-daaf-421f-9435-dad090f576d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b10bd4d8cde42bb0bcefc9ed572de1b73243ca14776fcfe643fe2397134ce1e9
Date: Fri, 17 Jun 2022 23:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655509199
