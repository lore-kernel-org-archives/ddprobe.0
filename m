Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A4918D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8B3C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664151053;
	bh=JQNA4ZeoI1gXIoEykIwlfq1TYKliVRc8lSzVDW4lwpw=;
	h=To:Subject:From:Date:From;
	b=Gh88DJUCucVC0JnzSgsvJsBOwmjYpgBk42ivePW7X9j4Ui+e3Nu34kylf6qTMHra/
	 DVWyWQ1E4FVP77lbxaY4NSYTAHytqw8PmzJ9OaqOigTH1dI3izE4KP5Wc43hdiZO5u
	 Z3quegrUSNfAsukPfzgNkkNj1ccZJ8um4FS1CLqPzd89/ML0yhnGHzkKIGcnMAMv1H
	 fp8akM847z7JgaZOamvwxVNx/SsisbP1B+ZDUWUO/gTqTqIkhtIuEpVA1CQNOdbX85
	 WE2/iUA2R5VItEk3eMjZZ9RBzJC7IAEmhr6ziwURx+E4MOdFKRbD81P0i2mTAVGVd4
	 J0vUxlHHUUnRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521EAC04A95
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166415105332.25651.4616907052949837434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45efa0f0092c6ad1d4d6ca0081ebad0d5d16c6be9fb4cc2890ccecd7b7ec2667
Date: Mon, 26 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664151053
