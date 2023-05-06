Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5801105
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 04:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08515C433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 04:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683348486;
	bh=Mr0baMGUvo/MdAbNRWKVNV/wpxOqvid/5T9VGAsqSMM=;
	h=To:Subject:From:Date:From;
	b=TFEgEoUyNwT45OcjOOLizraOaUwYoi7md3lEMwaSd17hpj+8X24+AuvQgLVeFBgak
	 svk+y8lsFNS1gapgS5XocDEAg4w1WjlZz89s0roq31O8/T/xP51AjoSb0L/XoAqQKX
	 uTSk0vxwvUN/9PJKRc8HW9RlAe3LLJAwbzE8PZ3jyWumIhI1A44kvaYfQSHs0QfuYX
	 OFIbZc3XsPUN1XndlgU1Tkv3c3EpgKkjxcjMyt/sBF8oVg2K/EFqGeu4J2rLZgI152
	 01zV797eF3XHu0/KvAeQMvH9/73n9kGBOpCWqHD8WWtHL3jHef+IhoInC2KasIN47S
	 ZB7ekrsQAX3+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA2CBC77B75
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 04:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168334848577.21116.1665045318359615554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558d514752e280821910a5412c0337b8549784d99e9d4b2f5270dae160467fae
Date: Sat, 06 May 2023 04:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683348485
