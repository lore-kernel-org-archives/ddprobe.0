Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D471E20F8
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A140C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665756053;
	bh=n+wxCkkVPiJToIj7g59SzDnGzvdfxwo1he/+Ln1Aj7M=;
	h=To:Subject:From:Date:From;
	b=UFdHcYl+M8nfMneDu3aZdHm9QIBsR/sjF0PN9ZfcXQzVZqvGNPUedWZuxB7F61N93
	 vYdUfP2TyPr0ox9F2XQ+MaHLX6nnWzxTmkSbkR7VhQ/HzvQNjDUHnWBIaeTH9DffqC
	 hbYrNTOK8O63Gp34QmYU5gt+csqgMWzmaCQiRnKuLPVhtyQMqxUQoRGJHUnANtGMlx
	 XD8QQWI+STErcvApnLlsnNjCRQAvcOuC+bnkWq0JUWjv1Mb3tm33ytxJf+HnN8/7Fd
	 lLugmWz/b5lBqOv8dmjQ+XjUL+KbfIIlwd/w9bSO2IEQIWffn9OvnfW8OOFjMaqSwO
	 TIC1Mkruhlqxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572D1C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166575605334.27812.11301069960278327662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ac59d15c6c563ea4ce1c6659bc60bbe22772493d4da41a3d55e44d833168bb
Date: Fri, 14 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665756053
