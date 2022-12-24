Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E813418F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93127C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671841887;
	bh=Hr6VKTwyroW3pvITe7bSojWUFcFel7IrVsFDTlZuArI=;
	h=To:Subject:From:Date:From;
	b=oG+x0ArWMLsQax6stuD5XHBagbpjWvWA6PmhxCYZcETYzlT6pT4PmbYyV/GevnT0m
	 48CMRIPPnf42fMCDPdbDGJVlrtN0lJHQkqJBHBytNTzudo7/krXaFM9BJ5ln0Exigj
	 38+mB6XDxeR1G/DWnt+1CKLdv5UjXdyW+39ZqXIMAGKQw0nRusLBj6aKTaXfLrbnsy
	 kGce/cHg9zp+QY6J2+9DdEtVna7+6MJ5dO3xt+MBXMjpAHNZn0cdiiPgWqtwPLU7rk
	 jqpZo7a0N6M1JXMon6Xbzw2MOxpt31p4Z/WRXJTjl4ZxJYsx6KRfUrg3imGramgAT8
	 ueE2ajMBZsZ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74463C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184188745.3812.1252384283416055232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4522029986127022c89c7d9b05a632556d99bacfd0ba82cd9a30f8b95b793413
Date: Sat, 24 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671841887
