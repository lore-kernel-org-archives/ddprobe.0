Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C021C285
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 22:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28D7C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 22:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694901908;
	bh=cIVg1Beg1SrqjH9rn0jxrD4JH3PY0vwnodI/EdNQoYg=;
	h=To:Subject:From:Date:From;
	b=MNEhBBolLpPVTBKIJEr5sr7IkyK5EXceWHYo4hCblY7qqAIakhSEmRX4iRrS6AgUE
	 sIvU5nGLfv30uIiiWLwE8xWwFvAoPdlWlaEtUxGUaMdq7GxE5rquzgj2mer4nckZnM
	 4y3NnojoCUIyv/Dn/Tx4Rede/bWfh3VYrN8Rjz7B6Hndqi5x3pqIkbJIv+fPq9aagT
	 N6RcIk+omTz7zqPWYEHSB3pf9CEH9sUuH3o2aedaNQ5kgFvcr/+s7yESv1KogY6X/y
	 MMuwTp4v3gaHiJkyJM0OB8QsUtpNg17VEs3wXGPqBXoMMWrlb1deOesecaJrvYJAHz
	 vcWHj/cxz5TeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B63C2BA12
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 22:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169490190866.22348.13280605020309099847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf7aa3571f048f5e97c3d6081df6f923964a2bf1fcd2eafccfb0a20eb40211b
Date: Sat, 16 Sep 2023 22:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694901908
