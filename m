Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADF5838E
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69711C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663432253;
	bh=TStVn0b/G+UbmrkobMnRGeuSLStf4UoyCsKvRUoG1Cc=;
	h=To:Subject:From:Date:From;
	b=ReK1LJffs9301kEPAoYlGxz5HkUm3I6wgLa71XPElO74pnfpaUQrpDlIUOJWaz4ZV
	 zLrKER1kB5Adg1JzNweAjBWg69XF59mNbZnklJ2cszTNwM9ucRVeV7+swA+9Eg96Pe
	 mJloNB+9Lvw6UHTihMK+UGaxG6LzlM1t6CVH6w/fcHQR/K3YUJbcWn16q0bx74Yl5d
	 Vc5sIXT1ylDkO+rkiZE7zuw7uUXduwO0iechxPCevNZo2eSjxDN9o22v1zUOOX+4/b
	 HsnvUsJNyfRAKY/dWm5U3uW2BfmGBDwEP+RzqP4MpApkmPeV4FVf+SVVMA9buGcH6e
	 9oe1hJc6Lts1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FAC2ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166343225331.26626.2458718577391339208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cdb72e4d3625ddb8dae88a3fd74982c6d9b882f3055d0115069816c64ccfc11
Date: Sat, 17 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663432253
