Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDA745BE5
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lika0nkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F33C433CA
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700082496;
	bh=rqxlvqeCU5EguegP9CbjT7foYae43wmQV/1w83zWKsQ=;
	h=To:Subject:From:Date:From;
	b=lika0nkpR6Cl4hTtPa141cMiqG3t+KtxFPkQqOMq0djEe5ePAn2gQ5F5B3UJaZMB+
	 I+NYtW0mZZVdIVG483kQ0hjYIKtUP+yJswEHZUekIu9qX1bVm+RlGuFEuFTk/vqz9s
	 dY4pzSRTAZWC5ySrCTwoAWZmRQexH1NvZf/NJTiC9RX15XDGaF7sG1taaNNtTbhvCE
	 5IFKhODcA+Nn0vJn4rH/1SQE4W1ERy+HuVO+/Ci2Q/QSMTO6X+++IXGhBjZFYWIg5y
	 x6KjMDR7EuGJX7QyDDfu68mKvCEpHAie1cJJCbXZohqMW47w3BaxDM0qv5hqQBC3p0
	 RM505/1rKJBcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68889C072A2
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170008249641.22289.5653114386475377940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64549bdc2b22afb14904980e78b2b85ed3b5cc3d0878bedeb9cd65a2fe753235
Date: Wed, 15 Nov 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700082496
