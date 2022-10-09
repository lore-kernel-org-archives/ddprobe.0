Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B048F5C97
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7157BC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665353453;
	bh=ErTNKMzNAeDFK2B19XM5HnvZavfsZ0LCNWfDZSgxuIU=;
	h=To:Subject:From:Date:From;
	b=SreQFfsbrsVNyACGcawdBE9Y6oZW3yX7IM/PtYUWrWNt0t7mK8JkLprecGbJom0Oz
	 6zy3dvEz0nbXV5MRZcJBSh3zVEQlB3sv97/bPIczWzpodagekIXyjF7p48UMnVPxKZ
	 3XIbW/ilxWjBHJBLKApe+mQZb1SzJtKU7Op9qL6wea4kbYTRiJm8sqWYm3bxgSvq0m
	 MsH5Z2KUGzw38nBIebVCy8h6asyexeiZO6habhBnv1cs56Tht/FGc3P+doIgYCJxEZ
	 yAyBiY0GdM6IjBEKLQcdov3XxmYweVoMRdjq4yZHdcC9h/4XJNZi1/oWQU6XEz5l2Y
	 cA4OZd8piUb6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C45C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166535345334.24217.18070793145412614000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e5d331ea426a611a3e0cb7714ad60febd793abe5971d6996369fe663ce9051
Date: Sun, 09 Oct 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665353453
