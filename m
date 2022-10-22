Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24B119B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97537C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666428653;
	bh=ECOCjqh40Ppbij8d2njmqVH6l6fV8TxFnwi7W3C/SiI=;
	h=To:Subject:From:Date:From;
	b=KfI6rg5/VcMgvkHpeIal/HwLeL/0aq69KzsWLQk5WwY8w2fFmpmC1ODo5w2/xVj3N
	 c4O7sFKvpY/K9xqPm68r4ejjL9agwkOp1aZFAuVAPxwt6isa24XoyxDBt3VrK/AwJ/
	 gKRucGkyLdW1Ejse2chWv4d4Zv0wTID2HzoyDzcX4hnEWNn9ofy2OTlrDXobOoDqvw
	 7NGvhbyy4VNxHtXUKbNtWfKjNtfNZiDTzbFyDeyRF17wOXyF6jDJD53SdiDri1kgBR
	 xx0ETlPzWzZrUPtlHXd91L9XbpWGUZloBXHnLYCe1aCFxE48hRwHXMtzBbocB0dd6M
	 gZ79EJF46Ui7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79539C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166642865346.1174.749828509585813205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99e198e0da4bea03d738a31a9db2cdc2558b04dc84819f563c5c8bd32615cdd
Date: Sat, 22 Oct 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666428653
