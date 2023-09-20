Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A69111714
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 08:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5277C433C9
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 08:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695200108;
	bh=UQTFVB+6OY9QcBQnNVBnaiHOxkM5ATiXG120jPS7nVg=;
	h=To:Subject:From:Date:From;
	b=V0ZPUGEn5bdw2WRbpFDj3PrlxY9sCcglGMDJV9aUtEF+qWmUlcsLRdXkbAANJiXOo
	 vWuNjis1IB47jO7mC/H9R5GG54Vf7IaX6ZKy1GqOUNG/XUHaZs+G0EpMtEL8nDJs2H
	 oamSCLGHaJcTZxsnFn3ORZmBzNaerokvPZ8vZStrXIJ+3LzZlLUnc4oK+9kqX9QosN
	 eHIB/kmScgGAl8LoKTWSbA1KL3++zbXOh7IHQuvyLADJZmnJ8Ii4/6tfnhDWIjUDGU
	 F010liPzH4NHwpAbyADKLfS9w9AwHF+qNiiAvSv5+cLko57ErUZhwrAHCiDaH5gS3/
	 esHAS8z7V9I2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A552BCE79AB
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 08:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169520010867.25288.2353800830125227297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b9e0b656d727abc2aa207845dde601a0f9606a5eca6d25568e068786e2a138
Date: Wed, 20 Sep 2023 08:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695200108
