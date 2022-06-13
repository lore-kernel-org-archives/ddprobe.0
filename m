Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD22EC4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 12:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655123699;
	h=To:Subject:From:Message-Id:Date;
	bh=KebmwSOUng5j5mP5eYS8UDsigaul8p2aynLdDn4ijoQ=;
	b=iJ7UUcocQpQ8PBFRQStIEvybgCX2B6dDziJJxemLCh9e3fBnTNQeHABqSs4MIQDp
	h+tpu79q33yMyc9n3mXxEzOncGvDxWOxy4aTsKtqm2KwIFSEasei3tje/PErk1tZEpx
	adkgjNJJSkSD4O9rPp69/tXO5o3qeHX35oFbMXWk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655123699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KebmwSOUng5j5mP5eYS8UDsigaul8p2aynLdDn4ijoQ=;
	b=jW5AlBYSLlpvVNuueAv4zoCWaSVkFMHGg0D7HFwfVyiNtQkPtwyNRYmdXnsSP0CM
	/Y1+tcUovCfLr3vDrl4UGNrIyfrsCao+MqpHPcFwORGioxepi0hQRWX1bWhj2hNtT0h
	YQCBVSRkV+yOfrp9cmk0oQ+hf4dduPxjaqaMOgzA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815d0f6658-7a4e2b34-0bac-4646-af37-cb7f397e9df3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2234b981f6aa1642acfaf27db5abd290192ad4dafb688d66f1c73a3b034ed7c6
Date: Mon, 13 Jun 2022 12:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655123699
