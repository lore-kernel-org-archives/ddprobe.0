Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50FE1110
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B28C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668340854;
	bh=ufGZjQxj7aIHXn5dkQyH0UYu5ofAKdD9BxF3m03hYk8=;
	h=To:Subject:From:Date:From;
	b=hljzqxlGYGbOzSAnOayaFWCwSpvF9UdaIjToHQ8ZQncPW5hVQyQ8WWoufLHI5ELfq
	 esba729T9BfVYtnFOiHLxXSKDH+bpCgbZMBVboG4zcaMTeeeT627cPpweEsMcYrylV
	 I7MZhtl/U0cDu1e1ovzR1AYG8YVOKDeRAUSibAoo8tYmOCrd8ONidgqK77RLis4CZL
	 AuJU901zqpJRCBT/stL3RvuDHkBW4/q+r7X9OqjErzhGpBPkkDDMROUZcKhoNvTp7e
	 JgGO7OcUFuKF2LEEmv4tplAC+SWwBZW5v2hKwIhjKFdKMdYEL1xN5V8E4z86IQX0Qm
	 iN+mB+SS/cvFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED8EC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166834085434.1020.12074368369417527180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f8fee9841aa79ab13e64e5296a4a52e60052fac0c3df3e253b1b6ba42cfe37
Date: Sun, 13 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668340854
