Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C536121
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A29BC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671019887;
	bh=J1rzUSCfSAOnAfbXdIqCs9Y4CFnM7vHzppcejs/ZqTI=;
	h=To:Subject:From:Date:From;
	b=HJBmIbWWrGGaD8XbDedhnJ9N7jU5KHnLt7BClq/zuY7kUEYcn0gd3HcGgeSjluVjK
	 C3Srxu0xS2/FS2hynUH7Per3IXskiE3ZvHPJ6AbCt8wasX/phV+SGsMkz5WQ51Wzgb
	 57kFGZ7u8t/Rv36vLKcYVmZlqQIpwmCIZtuWuOUEzG60trb2bb1fbLOCT5dNaK+QI6
	 2l3txKBlm8FsXhLcL4J9hXbkX0J/FA3L8g8IwI2QVj2AAbG0+h25atXnL49f6XNjUI
	 qku1N1WkP3oI2cXwzivnE7Vl+vSSSUVPRJE3Q9kltKcGuFls01aj/RqHO11exz3gRC
	 D/Y++9/WUWedw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D891C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101988737.24271.5100762506308363834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aba7dcc0fa8ecc78495edf82312b04e222b324e0510cfe1a45ae36f0cc84354
Date: Wed, 14 Dec 2022 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671019887
