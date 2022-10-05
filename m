Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED8B626
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76631C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664955653;
	bh=rtV3zUmBfaW0vVfqT8bwMuEw1GWXFeIl6SlwMoWAiP0=;
	h=To:Subject:From:Date:From;
	b=YARu2KOblkVjNEvVMltWPnRNXWiDRrPJ7LmBcMwC5ItninyhRjhs4x0IEJuV/AlN3
	 Ep7DB6UGCIMlbgIe5oaoBvPGS47C04AbYmxdkzVgWMFDxjye+D3l4YPdXmn/4mPGIv
	 fH+NCGD6OxmhrCO3USA1mztdPACSxzv21NUaZfMrekQkvYJQklLtn2vRzESfRf4QSd
	 XJmSN9IQU5XqGUwGljQ9IX2ELt0h5fqOOtveMY7EhTUZfgomhpEcs+7sJBXcDHv3hp
	 nYtIgws4cJuYXzYM1FNr2J+Ulp/1+9HK9ndfea7VYVYueVX7NHXO3TmLfH3zXrbiDC
	 FGHLiaEvVmgWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B53C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166495565332.5422.4960896440280924385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0dd595ab6e9a0d5f078f772995c4cc3427c5feb784560debc3d05bd8f3e4cd2
Date: Wed, 05 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664955653
