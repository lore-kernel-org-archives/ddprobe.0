Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62587EC5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 22:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656629212;
	h=To:Subject:From:Message-Id:Date;
	bh=6wnvUjR3AUJ41IFhDeJ236kdauxUY6y41KQQLQDeC+I=;
	b=ZNF/fuQLdGbzrpvxQwAlQna8pelyRpcmD7vLEsI7EsZSE3/HCbvMO+PdQm0ovAZ5
	7m8LUEa2snRSCDan4Wt98MMhOhj+h5u9z9YLXu+8k5IWeHBUDrwn2T9PddL5plIrNr9
	1hz77kAFYJyMV8HoOjpMNeOUsGvuBjIH447/ujaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656629212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6wnvUjR3AUJ41IFhDeJ236kdauxUY6y41KQQLQDeC+I=;
	b=XW0qgzK/AVMZ37ejK7GtGfZdaFsVOh+jayUOQrhIzyOhVqH97Ry9Kc5oYeirTxRW
	s4xHj8hu/Z4p+zZROtgGH7/MpmOKhlA2H0k2GHZZsXKakLVaU52puhh2QNdp9jiUYmN
	cWodei2qnC1GhkqaCgGdMrYBrAGB0e5lTjtwRm08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b6cbb480-3aec891e-c34a-4838-a950-864e13aa6c8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ac0523038e141a9d5b12cbb668350ded7f66cd8396344ddc7d4e065cf89cb75
Date: Thu, 30 Jun 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656629212
