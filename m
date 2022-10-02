Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2007C
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F607C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664737853;
	bh=/7hTUy/Sv039XiUQJwiqVmjFePa4Ix9Lh5zueLKSkYQ=;
	h=To:Subject:From:Date:From;
	b=qm5mcfqkJHlGBdnJX7WPwvZmXYkihFL5HDaOYSazY8x1Hgc6OFyrB7gxRb70B9X9z
	 koRmp5VSIqERto4k35puM9odprshX4T6Y1+TPBH9GEnwuOjA6Z71qR5Q3kTf74PVWN
	 cYfHsU1sM3vl2EyB/p3/6hjYgGIXP7cUMk1rGJ24/6Ao/9LGO8Wc7L7sZ4+bGHUM+R
	 P41yh4ee5cbACxZzZ16vc7NnvZZPYmAnPbdd0sSZRslRezr2z0rNtseUCX3S1/bpF3
	 QgFolgDMdrK5FP9jfWgCnqCuFy08IZHkCFYSA8jqaINBjCmM6eJ6ZpkXebPsWYdKR3
	 dQyGWVQgKEH1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590A2C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166473785332.29136.10850884809822763171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6e88b9065c8279d078cc36261ad6d4458a5a106f84a686d662ffa3b8d519bd
Date: Sun, 02 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664737853
