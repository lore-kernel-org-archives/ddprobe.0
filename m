Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B691B468D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66F1EC433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664217653;
	bh=MKVFt/8SS7yQGyMHNe03jTbu6tNv+4fjeySt8X9s50U=;
	h=To:Subject:From:Date:From;
	b=mAOVod8pZz57Ru6iSXPHt5dQOLsunuKxxlR2E41NtBc+ffc7m9Wo8nd7TsmRr2iBa
	 Xf7LYhV5h+FmbZvPitbtBLvA5FLiD606HkfFH5utqhW9OfLCyDOF4sM8rGDK67zv8Q
	 9hGoh7PFLWFVPXgEC4JO45rjMSTyRF2wzYNWqahvneMaBc0TphOzGUIG4Ktl5LOMD0
	 S0etqMdaAt8v/ZPA4D3UoUPLukc13BBDrIQhyJU6rrFxdt2mkwiRLhtLSe6Jw2vzdC
	 nBU1p7/MVKkqXDQM/yDzcjTvlzuyqou96zuLb2xrKrXf206/qGEnDGJsQPejr8VTLW
	 /fGVhgWYfOOtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512C8C6FA82
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166421765332.7124.2280694921254992385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8cbce0d093eaf112f22a907e1a30ae26cc0354eebe29cb9719e0bcaa2c0e01
Date: Mon, 26 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664217653
