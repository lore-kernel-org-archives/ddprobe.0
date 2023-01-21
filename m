Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39568395
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 21:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44E2C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 21:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674334925;
	bh=cOkPhQ/F0IlKxR54DR0LZgY8lAy7Y2/TvO+yOuW1Qng=;
	h=To:Subject:From:Date:From;
	b=EvHLLKwoOSPxcat8kM8tpEebQxbEZPdHPzEi0hZF1qXB/8vs1GL4+oHWrCA65Mf02
	 Xy7N77BJyVfuWcI8H5WUR/MLCrNfXX4rwEOlIGJfcPvpibTn20tiJCD12KImbMONZ1
	 k4uhGNKppqQC5ql6nf89VyseDUhPkHRzU+F7xP8780V66kk2d+xyO57c5XFypS/sf5
	 MER5vHUzYvUd3n5rIKN1V9dQv4/mjU5ep/xWUd1vnSLAHapoJ3o51ZQoN3yp6356GU
	 44CL2LqzT5uDGhmQT0QlDnCNzlmxQJ7JtqSrkyKVuATZpKxKd+OUusoaDk5FiNOu7r
	 JQisOSYULWNbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3EEC38142
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 21:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167433492574.15747.4822351647490832456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21110f0cebd9064850a13584fab00173655034c21749be82c024bb72433c1b4d
Date: Sat, 21 Jan 2023 21:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674334925
