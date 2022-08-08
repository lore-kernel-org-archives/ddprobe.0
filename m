Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91392187F
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659956452;
	h=To:Subject:From:Message-Id:Date;
	bh=gsd6j9KbPtYnM/0zUM/wFZF4GvyLi+Uauzsc3etTLh0=;
	b=O77KJ+HzMteCsRBpJiUrPlwqH9YdAVkeC1Dka1j4PnpI005m6az2TXqCFKTc+zb8
	wrkxnxB4Rw9K0mbcAByUooF3O6YrG7Co5eUNzZvdP5uwbsXK2Vhk3Z/hnC+rUIDiixZ
	xY/RO1S3u7rUtwX4Tb5BWrmb5iaFSjbjpnbm8vjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659956452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gsd6j9KbPtYnM/0zUM/wFZF4GvyLi+Uauzsc3etTLh0=;
	b=ZyApf+J26SpG/q/3+OiUo1iuHLMnZbjsVbFBrUEH3vgPLHT66W/Z3iTIL1e8s7lg
	KVkbdIfkaQ6LbMcmIXYzb/Ki0xC3IKYan1CReHNwiCDnBYZbMFbxBqFGVPbhpWn6VSn
	lYPRtvV94Nq16JSDcQkC+lZ436wB7oReLfl5o8oA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827d1d5cd0-32187487-be4e-4ab1-9615-b03221356365-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9220445eb554de30c0557699da15e54352b8753de6dd47c3124102c82bc3983d
Date: Mon, 8 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659956452
