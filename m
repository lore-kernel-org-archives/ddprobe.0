Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBFA81366
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86626C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673788287;
	bh=kCx7OTggvN4mBw72URyvk2sqyq2a9njBhUEPVUlJhOo=;
	h=To:Subject:From:Date:From;
	b=K4UIEo6Hp2F5JEzQQO2hVIReTp9i2R/kYWGnweFbc/EMISkB1K/4KLbPjVrHaTciJ
	 bYJGeI+IxJNeELbAFfsgA2ETkjmsZy1MJi9YwvhSI+BTS7c+bB5rGtVEc7lEv7vGD9
	 jO64o+QaB2JadleZk5BFyVLnrhyMlx9+NpCvVYgJIV5J2UjfyuDKidtu3aUkkzb01g
	 Cdl2CAwC8DZBus4N9nYXBfkaqR9XO6NoFn4eQvCNars43Tsl4197Z29N1GLUAWRy4R
	 fZGGa4pyIXr5vi8YIOiAnt1UnARlsMXCsq2UBJVSvwD5Y3f/406OfKw3G+dsokYol+
	 psjeILXygZOeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 689DCC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167378828741.24549.11414914156264284439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94f92a2415ed743145229a292eea75edb82df065c078f89ce0e1f24e1514542e
Date: Sun, 15 Jan 2023 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673788287
