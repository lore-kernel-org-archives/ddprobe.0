Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43E37B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 662D3C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666385453;
	bh=bd0Ip8XRkRcpY0SraejSWg8wJHK4eObGs2inEBTQXFU=;
	h=To:Subject:From:Date:From;
	b=APCF6nqhJchJ50KiUw+X8wpthz2YU+e8KrNlUCgtsnTQQeqLeLVQ33A7mtzqMoYPc
	 3LoqbNROV+fVFanQGITqguDksGcguBPv3JL1qsT/gWnDPXRdZYCj0z1e15m8D+Inq8
	 Cr0gu/BKCRV40m5PwzXgZuov2oynQbtXqDReblLnUdhjYPtKWLSKc0jp0C74CLCDZp
	 Wn2XMnFYmZuDpWLLeh4RmrREfuAGbMf+UxIm/yZ7XyzD8FNLXvuts9IeeETEK6YGwS
	 VjnTk9oeC/SxjOpiWvHzpZ5SOoQGZUnvQUbVPxvAqKv2gOddlWVY107u8wBQfW2tHW
	 T4jmSE4c8xZzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F17FC38A2D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166638545331.21975.15865482519434883464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302bd13001687e698029c6a41b4233fd3a839a038dc304ad5a489ce01191280f
Date: Fri, 21 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666385453
