Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092E0B43E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2290C433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674158487;
	bh=bWcB8tn3J0OZy0Hdhux4jMthLY9O0U0TgWd1Y2ILgU0=;
	h=To:Subject:From:Date:From;
	b=hAGgvOVfimlNq+iKTQhOxhLklrHsoqMu2R8IZF7wxyogHVJVzd0EhCB7HUaGVbpf6
	 NfQVoL/mi76uU/ShMseR93tYUfU3DR7NwkUqAn1dLgzz789RuRKzWMcVyxSKhdlEoA
	 wyAdghErwvEoyGCb9B6mfQX4kvnpH0W8LECpkguVt8s7pOfjyWmgBv7Owur11xvPht
	 hYFeADcpzVmfyOzmD/JmghGbT4ris8w71gR6dgbzj0R0TeihlkC3gtf+ApZT/vKMG2
	 y9wH2LGNxSA65t+pTPVu1wpj+ZW1dAX6mgDRpAdH7YYmGjebrG+lqtvxV4dovWhM5z
	 YzwQjS4hNnmWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E728C004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167415848747.4507.1428155980019130333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c818d8951c14a19eded370dfd58c040901e296b847454ff950b8cc7b6d0b74
Date: Thu, 19 Jan 2023 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674158487
