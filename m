Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C917133CF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F98EC43398
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672608087;
	bh=vkivsQCwRxRMj90QbwvRYmLaBFxP4CsKpdzizqgjPyQ=;
	h=To:Subject:From:Date:From;
	b=ntApbgP77Jg0jB5f3Dqf0Zcai71mrsM/1/vXt5F7z1dy9q9JsXpEoqVp7WqHGG0yA
	 1CjCYajY+eRnKA29oDcRZdQGvY3jcpCUyD8Nt0durxK2ArfP6KxEUt1lShLf2/kprT
	 OC/SbtbltAE3gmyh3LajronzNKv3e0MMIh2mgvc9VFQwyLSFoIQyugdMC/c+pOXO8r
	 yLUjQBsNfAlPPyPRSqrZ7joBOmNhalzOGgnilITTfMs1iiUmdcriEFhx4MCY+zCrH9
	 6cN8hroPv3iTNUiu7e0KG9qgzn45LkTaueI4A5jPw70ZPDoRxEuhjEpnTeFJucZZ2P
	 eQ9uWf3Olngwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD36C46467
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167260808738.16419.14349937438350346247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9b1949eb525d4a1ffa04022476832c342a9caadcf7ca83bd761f7dca4efacb
Date: Sun, 01 Jan 2023 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672608087
