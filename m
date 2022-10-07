Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0107EBD
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E44DC433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665144653;
	bh=psLRaggYkklcn3rUeY+ELX3d/PsI+EYFHK9YNaBFo6o=;
	h=To:Subject:From:Date:From;
	b=iWQ4cU99HeEajVXxSCxgk32TOHjfpNmXP4eae/fpPOzl+j/rb+hnXlrCFpeFvKhCk
	 Lq8+C7B2s8ZHDfxCkIf2QrMRc6qnVcr8/b5JMP/6NjxiFwZTrMTsJFE8dfwOXDVH0n
	 rmKKAFsoLvA9sK/qTSCt48vYqgptCGEqXq2KbMHsLzgnToZINj/2/tdBqqLBIczI2W
	 t+L2gdLn4A+OGB6AEdIwRTsmpWF/ktQ4+xnIUNBFDR+N38Uci91Bq4spp0imhOxjBC
	 I2ZOsTq0DjDGz4X4JFEEem3zQFBDGvKg5FZql6y1CRxf7PQCsJ0dL8hLJNgdEIr8E7
	 7EZuBdgOpj6XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62285C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166514465337.28846.14931200808008999377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba2a36dbd2708624484148517bff31e65f5ba89fe62ad9463185e3ba9036d88
Date: Fri, 07 Oct 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665144653
