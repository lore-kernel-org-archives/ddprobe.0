Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399F2646
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 04:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E37BDC433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 04:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685161085;
	bh=DJMUjT8FnmPwkkRJpsh/srJnqN82ClNWojZ/aXzycyE=;
	h=To:Subject:From:Date:From;
	b=rhhP/nx1ckAkCL7ngfg21RQR3n3J+c7NVnPFTNFHMM3yVuGWZyiuXqxF+S4TUvdIZ
	 fF6ryHb8OgWYIJBaZkV5dw50FIVWj5PT2efjhMAtKY9Iwf4lwbwmdV3hzjuj06QjS9
	 5vQso4yJ4GU723fUC7hhPpGH5FN6j23bM2Z8h7hqdTnKuCou2btPC9evf7po+7usov
	 Jq72ApneBLjPZMDiH0e7ibbylYIcYxfvepkeVf9J4hI9Pa0CLVh/aQ+yTG4MUScehi
	 osHdYWFyHCkmX6aXzszXJsbBwTC08YIuHhCLMDcjNQAic+o1G5FqTTJ/akFN2hveYt
	 FCP9lsxFGGrtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2EC1C77B73
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 04:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168516108579.30444.9716517953212459465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e50add59b05a17cdc4f9589b628a7418d3cbcd3bb7343dc7bfdc0429de548b22
Date: Sat, 27 May 2023 04:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685161085
