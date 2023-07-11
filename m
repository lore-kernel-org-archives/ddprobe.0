Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834A01EA8D
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 21:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05C6BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 21:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689111429;
	bh=wbGLJtVZFq5qjHeXWBz3GIMW7pQNrB75igLRknjbaCs=;
	h=To:Subject:From:Date:From;
	b=kM4lvPOFMztSzn5s9Q1EISicyIha9sgZ7+fVxIpcfod09DdBMZWW3Y2omosJO5BgW
	 qTqC5bZfjM6S4iFF6O4atCNUB333pUMRsjqrTqCnhONyv91Urgb6wwGpMe/Rsst/TX
	 HeuQ3Fe7v+3RkQD76qeLbdpYS96qnSvKGGiGjRBQtCxJAeOOcdRw8/S1uHoVhvyQ1H
	 8XPZSXm80jEmLr4JXiThjQ4CPkSsf58/e1sW5Y57AXB4tH8hFoxsT0HAZ2j/VTsEQz
	 qfsY/e1GB7yrvhTX39gYvjTOAWkzGT/wCaK05c+uYi63qVds8Y5aYnuXocZVYWNfBz
	 toP/P+dWp6yIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF580EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 21:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168911142883.27670.15138150751936820471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733404c8269dfbf69f51056c82e2f4957890994774eeb564cde3b9f2d31f6657
Date: Tue, 11 Jul 2023 21:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689111428
