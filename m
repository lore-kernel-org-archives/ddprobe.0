Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6107AA940
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 12:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CC3C433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 12:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691153588;
	bh=wRfbUUy/S4hmxNftQCe/oMh2XVUB/nlbCQ1GZgE09Uw=;
	h=To:Subject:From:Date:From;
	b=G1A1o3cnlSgi0rxyDBYyDhUHAjpo63Uz/DnmgaqW2vXt0ftBKu8OZqlkxKrKgEWKU
	 RRSmE1U6k9+7ViQkO3L3ygmdpzaOD+VOhGupBPZknVwvg3SXbBh4ZTzaB+zY54iOhB
	 +y5rMlUYSLMj/3mfPsp5LFSyRGx4rRMM9AM71veU7no2XsWzVZcHCQZQGxwtJ2yDdz
	 XoAZBH2bZYhlqL4xtpgf+s9kCy02gjQ/VxOGTWF0fSxk+36fAt6xZU/VqwE0JQCTLR
	 QKHiDRA2vqaHLR4EYiQ+LOjsVpc2NhpZ5xI1Ew3EkDIVO0fgxkP5VJm46u7bIasU5R
	 3b1REv4mlPXZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD2FC00528
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 12:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169115358871.8707.9802435210681109905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49ed2cc22033ecad3540f293ea81d06a0b3974a5a018c1270a751809718e36c
Date: Fri, 04 Aug 2023 12:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691153588
