Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E978E7B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B783C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671937887;
	bh=6H1J4THYwkkZK96yxrdkcpseAf7peCIJNEo17rvo5Bc=;
	h=To:Subject:From:Date:From;
	b=eXafaIRGDD+lzRp+5RmAQ8O9lNaAuZnm55UBqnfaZKuaIGa2tMOfgsIl5Scs3dnxG
	 9x9RsK/fEc6L/qQeGqYmfcDR6kNR5kccqPz3NhDDhIL339ttiHUHMFMwDFtue+0nob
	 qVS2p1ehYJKAmgTUijLwp174b8/X/gB3BgLBPZBRMFfm3fwHzHWZKkJMC4djVDyA9J
	 fQbULiEJxYhc/dLUMwcqJrsFwN1h7ZMvjGBmWce4qYfk+1PdZ6g5EZWZc0vNrDKJKd
	 jNnHbk1LLLeaabzvVyJBRLTfMapAOP1aneWdMW05H31NIVZRX29iNlsu0C3QCuXUlF
	 m3TKZmyZXmaag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D50AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193788741.8454.2045667302245867632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2229a2d91337dc57c8cd39fdc06e205e35d4c98fc6832c279a45f075b948b43a
Date: Sun, 25 Dec 2022 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671937887
