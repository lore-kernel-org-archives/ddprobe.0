Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0949EC0
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A314C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672142487;
	bh=8KvUWsna9uzcM1Mzv+OhC2OZs6XBWkp5w0ZUE3Aub+c=;
	h=To:Subject:From:Date:From;
	b=KfNNOn6oQM+c18dFmUHmMQxCn9qGGdn4/DJbhfgAk5EqDKAuctV7aMlLtRhNGZJ67
	 WbTgVoOUd9ZaKeFFSwbaoOKQBbZlh8d7GRvu86OEuluLcBqEvWZewRgddr3v5Jv4QJ
	 8dzojBVXRv/oEXT7NSEN3Qd0c59Zii2CxgyS2TDvEmxua2YKdSTxk5CoTna/ufIlnU
	 9UT1MyJuQhxoQSrXMWGl/ke/9YnZoqiAAmmoB7B8pWhg4EsWTaI52gDmwX12PQhlH8
	 hcNPxxgy1blE0k9ELG7dOBSiJ6nqWCa6iQ7jrpYeBpb/aop88CgDp0j695f1Aq5Fmu
	 401Cfx2Y771Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62207C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167214248739.3897.15773495638300096415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022ba7a1a2a3ff1de124cb4f4254ac832ce6c5f0f88e397323efaf1f38c3609e
Date: Tue, 27 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672142487
