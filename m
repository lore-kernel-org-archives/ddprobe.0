Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DC4290D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 14:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84F2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 14:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674828185;
	bh=44YfXj6NBhVQTenp4t5FSRb93ktkAQpRAVpGRPPzSeU=;
	h=To:Subject:From:Date:From;
	b=nCkH61qveYZqe4x2+sBu0DLyTDI58BlhldKaEhyw8EjM13qydKH5Hd7Kze0cJU+jp
	 5q8t5+3n1g3QUShEMe9LJS9onVhIZGd0CT+CKvDqn3jtK/7GES+h+zyjVrymWm/hAw
	 pKeIwaoyN0v337j1YZ7o849Jdnkg6VOEE/c8FC9uItkwMQCRdTSkKisYxb/i6m+qGT
	 drmvHxWCJhNG6niA7wugsoYkCmTTV8Em78YfK8qEIkM3wOlMNbjvs26Lst7u6UGYvc
	 i+vduvk+lbP8jVt2dwTwz2uDJvchlcFEZHnAb694O8JHX18p3rFRoerrU8MnBTN92S
	 E3mJcw8pv1MtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A91C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 14:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167482818572.4853.16251796955866019678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc3ffce81b4e22db9f58216343bdf6d8a54a870396098cc215ceec0b04d9810b
Date: Fri, 27 Jan 2023 14:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674828185
