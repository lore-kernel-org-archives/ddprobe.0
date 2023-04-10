Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4049923D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 23:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB53C433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 23:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681168325;
	bh=WsgP1W88hD1SoUpHCACJTxB+BgDSsQjRy5t+1TGanUU=;
	h=To:Subject:From:Date:From;
	b=RgqaRXtU42lOH4cqWDhgmNWiXxYtNAJvWGDN3OGqJA16Fzt7svySqFB0R2hld3Gx8
	 ErVvXOqOX/NON0pfuk5HBBuW5XJyB6yCD3SAIs0zzc1tDpc8J0SRLbaO4eE2ywd6sh
	 IgpxNANJhOO+zgPkSl42QjPWXvI0lei+MU/h3glPbzlyzuz3E/IN/c/t666zQHEipI
	 iwtbvLCmbQGA8A81iGq5LeS1ceXQP4bKx8fUC06aYWgyN5yDJ/5c40JbB/eh2CPPgp
	 tohROoGw3aWPt6pVKfG+oTbe1AhFRkTVuwJpr71w7X3DzYbbUyMMjbUS9gWdZmU5+r
	 NcOV5ZZWV/d0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAD8C76196
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 23:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168116832576.4714.4953684785118484276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4744acf40186a19369fd736a14131a155e9c4539488c89eba7e6db925cc07ea
Date: Mon, 10 Apr 2023 23:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681168325
