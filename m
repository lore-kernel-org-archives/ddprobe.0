Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0492F59
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76632C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663356653;
	bh=PIYBMqa2Z043SI2KbOfx3zmyylB4bykpuV8p/Hhm/eU=;
	h=To:Subject:From:Date:From;
	b=DHXQKVJNB+nCnzGp3QVBYNTk86HZ5AOUonKTXmXYbbkRctO0GIykuNN8AOGwo9pMF
	 5sjKBlNxZKazBsMVfyNKJCC0Vzlb4WV+X4Fn4o6j5UQw4S+U91d0SJ6MvB5e4ETsQ1
	 5JHR0tVF0CkIQt2+fC0Mns6+DOzb1WhabmQiIPZ1CKumheHnFTBBas2LupRni4W2jb
	 Ym4PS6lCRRM/15KaeQL4E+efG7mW262kMxe7WcTf4AyXYVzDPZ1NfNOEf5/k95cera
	 kW8hh4K0RltULoM57balH9gdsrEZNumBUTDPdOssmT7N2U21W0+cw0TlRmCJqSO6N1
	 VSkbJTkpSw76Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571ABECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166335665334.9687.2832091927794025269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91343c97c5948888918b2846a24c35f94d3724db27b4ecea22aec443fc56ca68
Date: Fri, 16 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663356653
