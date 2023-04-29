Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BFE15A5
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 00:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3510C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 00:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682728506;
	bh=rQMUxcONjoVN6ckFF1WnMCbmLWXhP1XXzitMAFvVayk=;
	h=To:Subject:From:Date:From;
	b=MorAN4SP6jlSSUykI5MSYvNXaCbSNmqneZ4hwHU7ZoESF3/88EKgawveSv9sP4g7w
	 Kg+QhuKMxofTCqkMDxiQv/NpubMBstJ1S9d1vf4qa3rQgY8gnIBtM6vZAg3WkDCnM+
	 HyBlBEufLEG7YCFq77HlvBv4wqUjkrafcB4X+YjwQFd+WT227yajK9d1NTMwceulWi
	 BRky4JqQlJbQezrI6K4jWg7L8AjYr3J6RJzewRtxqITkP1H3wXsdEXFi71zZAYd2NS
	 J57/G0P9XVdRvdFwBGDuW9caVz0UrKay2/5w16U1cFgIwYIUqRxDlI+bRfc62bNRbx
	 FRLKx7v7JJFyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC39C77B61
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 00:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168272850580.14607.5871794840127815889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a1c8be32bab8ba92abe09d3bc626b3bf495b5121230f0299cd55524d860511
Date: Sat, 29 Apr 2023 00:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682728505
