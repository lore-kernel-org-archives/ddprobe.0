Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC092367
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92571C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671340887;
	bh=wUKlmb42hn82zIuDNFLpzSr2k9TQe5sEQsj+PW8pQEY=;
	h=To:Subject:From:Date:From;
	b=AXRD8vTOI/VbBj2KTDJKrTU/LgLSzteHLmapc+tBMO+Ble2wiTu2GKeLNIroB55Iq
	 RiLLqpjE5hh5guyUSKmzkmGmT/zbVKGeTnZObGp/W1dXcvIh0BKXhdRPo40nsb3Q35
	 D7M+S2ad+ugzlj3RzDdoiaSgdjU4dVmqT9K6XQvB3UTl6Ss69QF3bB4U4Rqp7y4fGR
	 bK31KzniLxSeXXvG7Y53PYCcaHHQNPBW/7e6axoZQFTb/lTbH9OGrLigfLqkavN+3N
	 ev8fCbVIP60CzvOJ7UfE1UB4ugE7Y5pYAfk16W4VWtRPoUoOXqwG5D9J6+RZlUTZpG
	 9fM0BCJ1mZnTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A66BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167134088741.11309.5954612577508510134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183b521df7e9629200ea5c0d2311ccbb052b2edd64ef880cb99e74c3c361dca1
Date: Sun, 18 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671340887
