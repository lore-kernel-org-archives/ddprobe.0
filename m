Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5B23222
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83583C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669143654;
	bh=wRnEIizerytS6ymDsC9lUqBwTrS/0vGIHLmT017ThSc=;
	h=To:Subject:From:Date:From;
	b=nPWJntETjgL7nd4bkDgmy6qUInuUULxkNhH/mL2gx2OyzYwLVIWkH3BewdzmrNnWB
	 4+S6X0ESlfkSaLrKTAkU9ZjJWd0YGkr2AHTZ/ZINnZNWWv6/8dfWj2xNVeCCKfSp2l
	 R+PurwOdqEHXs5vMNByu4fke+TvwHD4UlWilnk8TpP9sI3x0zGQU/FtQyn89dI+9HI
	 EnMTGKcr4gvK+9hVwCq+Pr0eH1PHsn8xUjL1VN0SV3B3+P49v2D7DLUZYA4E9tfJK2
	 8p2eA6hzwhGYqAmdDTGycYBYJ3uv5/07enYJCxNNvd4s5Xw3X8Z47mvYDaAIU2duws
	 /V/Wi2JVj5u5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63912C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166914365439.6041.6635719276174774695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c1f42a6d9cfbe0ba699610b3aa093c85e9c0fc349373ee01bee0758aaf27f0e
Date: Tue, 22 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669143654
