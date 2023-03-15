Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473A77E
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 03:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED355C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 03:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678852206;
	bh=OiBM9QVzM6pbh61V7dm5PLz3Qm/S+dyDYZcClslDprY=;
	h=To:Subject:From:Date:From;
	b=XoVp0+a2TVznQ0ycmIybwUJ7RVyYsL+h3bmaAnH1dSqjm+KMJe3RB1BZ0zhV3NfcJ
	 bPio1k3JVE96jjIaHUF6fGR38jYnwnUHwIyBARN8jGnxGLCeOWF/mmtsfDOnEmpeN9
	 Db7TH7zwYrLDIbqKsRkfMMLl3n8qSmHmqFelKTTGvgXB3jwi5MvFqXNZ7BrOatDTyS
	 o+Zg19RTYfl5rxpr5IrEoezJh3GJBr5kMb4hP/ztugZjCoCFyrUwx66vWqCts5dc3T
	 zLnaa3JzrUPy2L0Jp46hvJmY9fmy6eOkToP2PLrUGxREPHt6rUW0kCFnbKurDKflRi
	 v2SLSZ+SZyZ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38EFC61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 03:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167885220578.31222.3939397141356983416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e643c86e5fcaa3f5801351bd56f9106487ddebd96687affa5cc25ec3be3ba6ba
Date: Wed, 15 Mar 2023 03:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678852205
