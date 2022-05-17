Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084167F
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 07:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652773259;
	h=To:Subject:From:Message-Id:Date;
	bh=6jFqJSnsA+VVc4ey/5xwCdvgzoLIGf2sEktBSLc9Th4=;
	b=fJ9sov41GlwGY4zVdDZ/M5FX8CLQuG6KQuRjSa91FpiQ2YJZKhG2BUuXmt6YmP4V
	v67PrEo8nfbhEsiGx/AfS9MazhuCtIo/S8/Pe03mLHvIJgiyBOwctoiIO6CaBEYKvNL
	OwM3JB3NLPGsM0NsdzlDh0JwCal3En02JgxNcVWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652773259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6jFqJSnsA+VVc4ey/5xwCdvgzoLIGf2sEktBSLc9Th4=;
	b=DmwHim4FYluUYiRnH9ykC6SGhbLCTMPe5JKZsukQLDLQlorek1kHqa375SBB5qcq
	S7Xifm3IKYw0q4xNlwaAQr3hskwysGPL+B2c8AdDUM+0WazVVOXGiHmVdlHacfyAQsM
	+km9rIkGz2z2TCgjVjmIUs64cJtWhxXpJ0pQC6o4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d0f687ea-76403735-a43f-4b56-8353-de08aa0abf7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3467a3ae0366e97beeffcb2bb16a55d3e6553ee91b610e491d358dfb5e039abe
Date: Tue, 17 May 2022 07:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652773259
