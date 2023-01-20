Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E93194
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD93C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674189687;
	bh=WqSEZsQvYgzfolBvxbt65gn1MJOPgPCkZPFVpC+rkeg=;
	h=To:Subject:From:Date:From;
	b=mmOaJsSWr2YPA5rhzu5He31S3v3nZZZhK85Lg+rShOqXc/FWXetM5VZRfnqpXPBKG
	 jpj3VPc0i2M81iFN7CazUORRaipe4w9RefyjS9GPfcdWZLqTq9MruPEBQG9bNEktfz
	 GsjSj01soN1tZkE7fZl2bYpTUplmu8ZVZWbIID303V0hAp7GTHj/lc78An6CbDFybx
	 7+X9WA751LghmADUbp3/L/5eD9LBJmyjQNaWqjBXbcqmEZF40T1/pe2LBL8eo1XzSE
	 +CuJRJgQQjUkwnc4NFFhQ9eddJAR7AqO3tHdl5uIgQLNOptmM58NWRfAzK/3YZG1FM
	 CnGM+2R6OYiyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D0AC46467
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418968738.14476.4229115218815660272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec82fb170be521d3ea7d331e1be28c44020e8ebba2b1ac0dea3e7fc17293dbc
Date: Fri, 20 Jan 2023 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674189687
