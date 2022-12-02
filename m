Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA99510EB
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB0FC433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669946454;
	bh=o7hbTagARtU3iJT1m6eyKd0Gfj1OnPdgmg9+XI74VWk=;
	h=To:Subject:From:Date:From;
	b=YuAPGpBlZ9Pxe8y49oujo7VIpQnDttGP5HFJ24+b1yNizYRugEYqWDPax4jqWSE8V
	 AmV0quMyK+n252Uw8XO0Y5EpcQ58uOym2tcZK+XD7A01SCeMZ7Oyu6rP55r3SXM9V0
	 qu9h3ati6rHD1bJvwRNmAO7XM05XYtWc3ObO6mfdzaXyPgBzpmgKRM/kzjZnjWKs+C
	 6okjcMA5xqvy5xzCHi1e4Wg4ifyB3YUNjC1jbbrN8yNf+J2s/cOXhmn5wIksXjRMsR
	 vLThxR3M2DZAyF2B7Cg/ZSeuL7TrPh6yNXuGqRm2BgpkM2S6TYjRoVBM8Syj2NulCn
	 Vj8YVdLAu1pDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5457BC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166994645433.28818.4802384367921133095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e0a45b78320a780becff27f3af1465260a3064780f4519a5505da1d281f2ae
Date: Fri, 02 Dec 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669946454
