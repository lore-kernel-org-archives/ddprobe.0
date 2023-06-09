Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF481993B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 18:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00EA8C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 18:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686335166;
	bh=PGmC/3kMgNUEG7X6+/Md3F/AiZkrJNrjSoco1LawrI0=;
	h=To:Subject:From:Date:From;
	b=Lnchm8gA8oYXnGFMxRGhguHMFh/bhDfSiZ1F4YS+hTqbzcDRW/W76Mhp3z1yIrIob
	 S0afhX3YonQ+LPOFZeDKAZopDVqkEmQkzasmysIq4hBStjEEE9JHyJudDS0v5ZJnyg
	 OJbpbRtgOQMGYMiXRvWR/9bDWIqA1Oa+Ek5TSUGff9ucCqvmrTNXMaZsRXp/6qcxlM
	 Rol+o1mBr+9s2E5grvyrWvZVcyysb4qGSQuEw2fePK0MXCx0FeFhGL/0OiI+lnB4bt
	 Nb2w4EKjw6UmFTf79rw7JemHQIYJOBWzWLksEWspRlMSJ4SI5+ljbCSKW3zE9kcmW1
	 gZZR7H02YRDXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4EF9C7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 18:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168633516586.11061.15150898681725504238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139812b78b0ce72a6da98cbdb10b5b2f11083db89181502dca595f3fcc5e6147
Date: Fri, 09 Jun 2023 18:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686335165
