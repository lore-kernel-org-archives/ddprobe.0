Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DDD1FAB
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 13:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB866C433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 13:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683295025;
	bh=++6+lbxVdSRUn+8Bnx3fvwaNs8CHArNp/wEU51R79No=;
	h=To:Subject:From:Date:From;
	b=UVabODNW7tP0bda6xaHMt3yZbEj2yJ2O1qC/MLZaOsrYXySLuaSqx7l7c/UyQPSGe
	 ed7i7u8gR5YBbq3opOycZfpyZEkmrHDo7oep/ieIjNGTx+g+Id+YZ9bvdqHk8UyD1w
	 SQKit2wOcFT9x30rtQju5f5NPKolcm/5UWTPMSphkrsnUeoVlwYyLFxpIo8pKkE1RX
	 acX1Q7MSXEmkAyeMKpGFzMG5husJgi0EYrIZUXECQUOuWxNY5r09AWnAuznQD6sazs
	 N7Y9RgFyjHKrbzjK5Fm0e357ZWe1WMtPvY5jpFy0SgjbHuFfiyKZVNQxrhz7g+Blgg
	 zL4K5rHMC5Frg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2D4C77B75
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 13:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168329502575.30406.2400667860950478583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd25f6be4268178086f837a32d24437caaeb2b11ac22b4da9d3ea3a87cdb0e6d
Date: Fri, 05 May 2023 13:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683295025
