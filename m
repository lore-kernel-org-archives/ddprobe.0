Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB40963C5
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86644C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670605287;
	bh=K/y9V5Eq1EmV+EjJf1ef6VX2KLUS7Yb4tknXLMfIx6o=;
	h=To:Subject:From:Date:From;
	b=gwFl88V2y2pSynjCNeW3F0CYLtGjZHLcL3UFbxX7gAOhAnXY6PEbqW56ClXy8rt44
	 Bo7qAhC0OwAUxHZy5xDH45YgLQ8nRPgTO2ScyvjVby99SDscR0z7FJghP81euILmbJ
	 NULVGxllQ31aSNBXVd0XFSwUulNjATa/RG5DHd3NmCW6pAXVXmA6jfYRF82mpS3yQS
	 Uscld3Nd+yTUWonrWqATKKU6l9ZdinrTbnFxLRr1/k6DUkR5lycD1jjXljUo1ZgLgU
	 QXFhIdb/UKVYwA4TOyjaj1sEIScG2/vMvUeLhtvVeMqs1/ijqlkZ6kKPiWjNhVCWpa
	 WCr8fQHF9jSOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A281C4167B
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167060528741.3421.4334572616237483405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177c77ad631090f8da97902555de356818e0e80b231bc9d7646c77746a6df9cc
Date: Fri, 09 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670605287
