Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002CD10E6
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKAjSIE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B034C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702948696;
	bh=JKdMiQyZDwvzWUIcmlMmnsxljnNLTZUT6DbojyX5c1Q=;
	h=To:Subject:From:Date:From;
	b=dKAjSIE8RJnp54XxMkWoS9P7+nQRJnmvMKSsgir/godRdyHw8OCFuVpXnlEl+djaT
	 tEfQ/s7XZ+DRlKZO+Hp8rmI+OT7xcH9bEZhIe3q3ii1waAivoaozx/48lZy9EnrxZa
	 zwyj2CHlTWbEXdQeItlYPrTglKr0ILxk/qK3XthmhsjG8bF7eZCOL2O2VQnOmRwhf8
	 3/Tl5eIfnF+nmrHZ5lwf187GV0OXGZAYIO+ujgfD7stdcDurLBTlOKyMB5JbC4Wa8Y
	 /XnX5WRb1f+kO9muKRN8I7U98cZFuhL1I34SWlbv+Sq5p/Kckv8Mo+Yiy6uxiNMsu7
	 Sy/oAHxxpvsxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4B4C35274
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170294869637.28397.6838417239250644080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc15c4677d4a509f64e3cd3ac97f5fd5cc539dff30d194009956ab7f1030c046
Date: Tue, 19 Dec 2023 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702948696
