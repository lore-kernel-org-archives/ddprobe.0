Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9ECA7E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F4CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672391487;
	bh=xC3Lzgwn2381Glb0IxKD0OipM+DXmE6D9my8HKiFsSo=;
	h=To:Subject:From:Date:From;
	b=tcMr+MyTLscAWiBwlrg2GaBWOGJKVW0hLosVbVNmje3LJSvVJeGozRH/Ju8uhTgZT
	 QV1bSj9Lq+uylKeffK+5IQ9P9PUyDqol4pj+4BciyRb00n7eq/VMd/H2+7ZOD6rDKS
	 yVSWzdOZNZ1vTK4rrIzDBDgkNEEW10CmllSkAObgzMn5F5Axc2sjw7vBvRtGcf3J2M
	 og2IA6sJkMdPC6KtuVtvaNYTgetjE3kfkoFpK6kKLgfU7k2wOwssVxyypv3Ad7uTjM
	 u3hs/Yn5uh8JoK7g0MpNrdmf/N6PhEfeV1lrAixNDyXU+EMGfBMWbC+e+EpatwA2yp
	 wtacSAj3L6nJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649B7C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167239148738.23904.14331714700697981824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788ec27bf870369ecaf27ca2aee45cf164f9955d136271a89cd6c309ec362689
Date: Fri, 30 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672391487
