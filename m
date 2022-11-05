Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87621FBE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786DDC433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667647854;
	bh=FXv/lY6h/rS0+HpoRHNB6DPytOLM1RSbWAWPguQ2zOs=;
	h=To:Subject:From:Date:From;
	b=FudfxHx4I9cUUMS2B50tyTdih5PqQnKefZ1Hr8PtY52+39su6rX1R0srFj1JFRDAX
	 4N7QscO/RROr00w6GObymxQIGpB3x2Gjtie3tSwb5g46249zcmDL0QgJ0yxNwdX4JI
	 yUsXNH5eoWHq6vTfUZAJiUndMzhMOp9czXAlZN0NFM6IHTmbEzX3wsEZ2/TBA7Zv/G
	 C/2ckMAsZQi6YEe7iAlFfTkMAhYpUzqPR5kIXBoig+ytxFX4jNOStxtFik5rGmF0TE
	 8CZxz7ijKFsZ/UJAj1EQm1I54Oe4j9LsDkt3+pBlW7gFKOo1Zx2ZBeY0bMIrFp9M8K
	 Wd5vKP9uwd7aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC95C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166764785434.18309.12349612471326124655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73dc9ca6c6dbd2638df003d85877c800d2ddd69b5e01d8757d46e8395c836ac7
Date: Sat, 05 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667647854
