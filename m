Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51337B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 711E1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666321853;
	bh=R1EVfEN7el20jwdjGdab+mT4Cd94jDEaAHjUieBbTzE=;
	h=To:Subject:From:Date:From;
	b=mqJhKF9pzCyIkMFP5zU4c2x5jvILijYYz5QXW7Bhw55IkF4gmmriOYiky758yZRB+
	 CeedobNHYwiO0J4fnoLSeUELJ+IUfxJNiY5e4AhT1QZAdOgsnVWwrjwfium+tlz2zi
	 E3sNdAa9ny7KlMrkB+Xg1/WMby31cjQdP407bK4fnaIcTWTT6arpLfDxCN3PPFRPd8
	 TnmeyTrKf+8NDQAuWk8yIpQh/SiPZLz7t1s8drr5tUJFdLBrJOda4onXX4uxMxKUup
	 VxAQDwEWuKJxnMPm2irC7372s+ejcyD1ICSN1o2XMxKwjL0/XrLFoB236wkhFXXTIR
	 KjbukMax4m/Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51AC2C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632185332.2334.10127062855849993032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6ba2f269e9234a0836b3f7669ec28c06807f937e2126b4f8b04091ddace01b
Date: Fri, 21 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666321853
