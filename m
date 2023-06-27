Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C848182AB
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 15:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D5CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 15:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687880588;
	bh=zvQVdRw2oPfNfeacbOCPzKOnt39MsgOdf+IiS6RWpdo=;
	h=To:Subject:From:Date:From;
	b=eVU3wvuPert+I8MZbTr8FAmTUzGdrARiAAJrulnJ8x2gcdMDGGO1EINT/BlRGIV/Y
	 7/wCkSClv6kA2JxVNfPzX2bYseYx4yK15ddyGcurtvgJlyM1MnIqJRBvGGks460XyB
	 tHui5vkmuckiWh3ZV/oHw3BKfFLFvGeZAhmZfuCOcZ7O9YgkMVNtTMbI8T/J5UuaMG
	 YfrCt4kFVIgG5yJMssAaB8ohKInnw73d3pSOp/E+Sb73Ee4x0d3lhmgmhN5V4j1b1P
	 pgfKMJNR8Y6M/x/j2IBFUuVYK/66PTON3ldYNat3+S6d4UpMwXPXdcOA7cuE3rfmiH
	 de2P2nBz9ebHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4FCEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 15:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168788058869.11436.2224356388173964764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d30749dc28fc92431675e7ecf90ccfc5c0d08dbfc16a4e5b8008f089a16ee2
Date: Tue, 27 Jun 2023 15:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687880588
