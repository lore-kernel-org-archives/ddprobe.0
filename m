Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414307F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659390652;
	h=To:Subject:From:Message-Id:Date;
	bh=GmvRb+78osIY5H9dD2xI0bmDY/X0YipGC9JanInwlz0=;
	b=axAtDVsmlrzUeCt+XOO8jNwdqpWSdY3ppEIRMgGIPT9gsx0FmL/FTlpO2Q2IZLcs
	ockZ+WZtSu02fZ8C6JE2lH5awjnyKI/oN0UVM6ASEyRI7jhfM5iE8TUfyNTGSxAQAn7
	JC7xjqpXo5fOMuaxxHbUs0W+8O8vsTnOs0Upr5MY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659390652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GmvRb+78osIY5H9dD2xI0bmDY/X0YipGC9JanInwlz0=;
	b=QTCWZLoQ3T+Y509CCXPjYRXdPmaOsO5e1S7m9GUfdbm5G6byN2m9fPBO2V6pUiwk
	h04IsqDh3AW+RTaeVJpqws+Rzlx23uEHF/ffi0Bj/TGgQcf2fEGTzyAOnDbqCkPfOYy
	aVsx3yQjg2Y+2LZKKgtlvOjDrO4hFCfm3MadIQVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825b63f069-2f72bc2a-5703-4ab1-aa27-e89b194afb7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30c83f7732439a83a31e659a6c287a7b562ecf6f485d902cbf10fed4652afe38
Date: Mon, 1 Aug 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659390652
