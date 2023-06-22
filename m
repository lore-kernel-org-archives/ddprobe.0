Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600051F16A
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 17:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61BBC433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 17:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687454588;
	bh=5DoKiuHq/GoV2Hl9B9lN/+7yeQMicbErMXXzNbeUhmk=;
	h=To:Subject:From:Date:From;
	b=jKve6KLqlTLJJB7lEB6bkq7kEu0qgwuDhP2PQ2Bk8odPBniCnJ6j4Hs6C2bKFh3IS
	 T8Gr4ojMw9CNEEIhf1yhn40QQH64Md0i8bN9gkdqMWXwLF6oO4rK3geLd2jlERegF9
	 0lr038DgHB8D+ZrCdBswUxodzlQp6y7v0C4SIOfxALc5DH9cSPIi1F4aHcjqv5Ubvh
	 OIxGe3rNZgnbFHHiBW9W20O2ew6WrlmijrbNZ3McMm+1i7kuPny3FYfk8n5VKkgeJA
	 EAFy7ut9YgXAlFgzX/iNUTbdqlQnxMksp/LdSLNTtscoVXXrzGPKNRCuUX0yOq9QiR
	 2Njp/BQPLcyCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77D7EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 17:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168745458867.30918.16421347473407376986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f98c25c1381e914d3771d7d77e62bcaa427988fa81d48f0f30b34c53cb9216
Date: Thu, 22 Jun 2023 17:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687454588
