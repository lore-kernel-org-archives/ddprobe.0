Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5449D10780
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 21:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2EFCC433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 21:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679434686;
	bh=91dPEdPil3rgCGRjmugJhN76CqPlsMgTxHQI0bH9n/A=;
	h=To:Subject:From:Date:From;
	b=ofUTWjdy8ZsMo1j7C1kgU1hN+fQraLbF4TokCC3XvQIilfklE2Sned1uTzsfL2NJW
	 FMWs0Ss00eBImSBqYVdKmPlqVdcG/k0WqF9hXU53Sq8IuUI9i5EFtapT6OGDpdy1ot
	 gHTwQWNrFIv9nd3oVKxPjKywYSd0sNOTzuifW8+QfShjlvE58D7w8Q0eZ4ks1qXQFS
	 k41jSTYZBPgz+jALEaszwfrvGkDqCoeFbHXuhrdRwGDFqQaSa+nanyHpKg8ou0w2jS
	 Xslvr4/dvWgBC8O3w13lMWN86Zly9o4GAaN71KUnEwi6e9mR1PjWkgQ5YdBHYAWer+
	 Gwb7ES+cIBmVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D490AC6FD20
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 21:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167943468581.1403.13533013604275089794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940126809e6897089672ae4ffb5417b9fc840730fa67c77ea1f63f5b7b5d4fb8
Date: Tue, 21 Mar 2023 21:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679434685
