Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9C319A
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 00:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6985C433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 00:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683332885;
	bh=0zM3YQLwKtorN5ArlTTJ0Hyjc8hoMBmaATE9dEMRcI0=;
	h=To:Subject:From:Date:From;
	b=c7xSig+5uNZmDTbznDA5K0CW9r8wSlFMkdrOKO1xNpO7T7KwPeCd0zJfqnlSyx1aR
	 etL9R+TS3DmAXlaOEFjkXvnPZip6MDsSx5hotIuuCSfK0vipvjxHQeN5tB2YdCuvQe
	 KpqGd91jnoVmHBBtuRAhnjz3kJeb4UO4rLvQHB4/rB2jZSNRBt+H1iQPcjhNNp1Y4A
	 TCll+KSpivFLgSQEMqtj8F9Jpcf0nai09ubAEhhahlWyxVdpEeOdn0MQcmOpVaXNLB
	 ZEu6NiaKc2sjAQN6N8nfl6qPFa4shcQz5Uwn/JI1kBhc1MWxAmf8/0JZ94AnM8fhfl
	 BmOt2KV01aRoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF07C77B7D
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 00:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168333288580.8424.12448814199420589166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d7e7a133049922c6ca885f66afc1968261fef7e3fe8fb610236830898ac72e
Date: Sat, 06 May 2023 00:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683332885
