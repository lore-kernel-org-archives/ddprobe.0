Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FCC3FE1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E754C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669989054;
	bh=DV0ToL+9aSTur3oUgUGZQVxQiXW4BbNie4rvnZBSzWg=;
	h=To:Subject:From:Date:From;
	b=UUCJbbMuA71OClyyBc9fd+xFYcKtVY8FyF8hdCoIoFb5RDdKvqF5sJdwAAyQWN6sn
	 cdSLdEg0EQDZHBCAOoVBKtVhSK2efIrJe7w0TvmclVJam6W4CX9GDWYksDI6GTQiyw
	 xRcWFTPpJdiycV0rcNNE69gJJhSnciwng3j/fdEpTLGoTrHEuCH6VfBxxhcpiSr8Pk
	 pKXZLPIS4AILbcyBErM9wsDvHILTIakUec8PLJYGZhPmVg+a1zBuXq/vDzAfKhUNKq
	 HVPF6j7GoASU5/60NQpHlQT6AwRKcJVyKNvUJ9VJxBzpd/Cy7PFkY+A+O0ebnqpn0L
	 UoA7UJmtSr2Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CD2C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166998905433.28330.7015521026210232950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f45f4e4c797cf98e1f78ae0b06f3b100f0a177ba6d9e725a4250916e75a27c
Date: Fri, 02 Dec 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669989054
