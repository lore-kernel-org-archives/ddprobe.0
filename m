Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE36579F6
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BBA6C433F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673542287;
	bh=awBsn6o/hXRkrMC/QKndSls39hQ/whsVjYzzZtQ0k7o=;
	h=To:Subject:From:Date:From;
	b=gXCFX9TUHavrY6EvolqSCGjqq65lIXlPna7s8vzGSBjrEcctywZbj9Zkf8id9aEmB
	 e1pAy4WD1DVTQ2IhzezczBDN6uU2G0cm8VgoBr6IV9dk4aoNuR/hfGp8tiZv7uM+IL
	 lkYQ698YODGWJC9sjS9DYGhSRHQAIh2Vn9v3lmjJzGKK4iGqasmoQnT8Ta7zXsp3Z4
	 DC6FcLTDABxxTFmZZWz3QpCZZbd4HOI1ekGUdoE5wH9RXOM5E/9NzuyDV/QRiNN+pG
	 gpJYSr6fs44RBMtWKcbB4tRB0nmttux1mD5iSkG5Vdzri16P2ZA+eEGKUL7QBL55Ay
	 fpWuspBWWRWSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678B7C54EBE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167354228741.15093.723180312818829457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d1df9fe45261c2ba39f4f6a060acda457009e4c00d821e09b95dc563be5739a
Date: Thu, 12 Jan 2023 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673542287
