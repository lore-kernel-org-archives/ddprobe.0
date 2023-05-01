Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396002581
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 14:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00E8C433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 14:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682950145;
	bh=eh7VUIJ/9KLYWzbVymu6ahushX4qu6OWl8Qx+ApMauM=;
	h=To:Subject:From:Date:From;
	b=h3VqCx4cgj1xzsakhImB17DZ8JN14oveNOsT9zAR/zY9WiWfYUTa7QXEr86ZQ3Wuj
	 bOP5c/Z7CJ3epBYidx3r2icorM9yLihoPZ/SM/F8HqkL9YrTV25kM+r/UgkjnEfZEB
	 sgGUmfchhDdIoJWUAKWy3cpuLAOVglO0qbxAknEc0JqQWy+vHtqE67KVQw/ANYgINi
	 ez1IHzUTOHyKlnre1X74q8GZuTJL3K7cJOAHEsZ5cAGZi/Z/7SPJ9Rn3893pvzBVF+
	 Lc9SbC4B9rO4b3yHDsV+gsbJHIU8Ctlo0GPi59SfSAIAm1xal+nAEt9MBZuZshkyab
	 TPe4HyMVqPV2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1432C77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 14:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168295014578.31583.1390188075473224395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1132ef3e0aa0bd043130a67b01f22deac552e037b5882b78afd3bcd872ae6cd9
Date: Mon, 01 May 2023 14:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682950145
