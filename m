Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9ADB7C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 08:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7987CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 08:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661588452;
	bh=7E5gOyIYu/cyd/VuOWvuIFb3iyRrLaXO17nLPg9sQTo=;
	h=To:Subject:From:Date:From;
	b=t6PvUYZIbAcxv3sfg/jk+oaYA2sWF2Bwcq8VdhLBAsS2Z4nc+GlQzv41kPD/zzgAV
	 v3qVeynuNQHI43zUdBcuupdWlYi5rky/4iRro09oT4kXQfI8DrhjZNz45MEgg5ixAE
	 PUXD9JaMDYiIMH0ZwFYqlWi7lBUdUaMqjqq9Dzuelwxe0LsG8FPAVO4fmrrOP3f2uF
	 CzHrKgt2EWObEQkWcrV2IMz7eFMPRd+Rx6kUdpjk9LgVIak+i3h+g7rjkbv5+b4qN6
	 /reJipu0atXRwytC6rDwrq4vgQ35RiDgc1E+Gcs/yxOjGhy4790yiYXbcW5CQCsIjI
	 RcNL027TxAbiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565E4ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 08:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158845233.5772.13538652756646378527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d858fee78c6931ee149bcfee72a2a6c87e33aad8e00a922a27dbdb14c3678664
Date: Sat, 27 Aug 2022 08:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661588452
