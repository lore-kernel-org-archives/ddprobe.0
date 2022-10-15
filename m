Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC48F2586
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72FF1C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665857453;
	bh=ZdL4edVi6h0ZT1UJVaNvH4O73O76xJFlbB9+f6urCzQ=;
	h=To:Subject:From:Date:From;
	b=l6094mnVM0Fr3tWBVptjxFQ3xIgGtXNgLM6iACVHIPJWkjUrhbqpCZO1MsvN0Tup0
	 KDQSqHySYEMWi/B9vfWy874+Q5kD7PWf8Ad7aQIDWqWNQXuAf2US7amw+5YVUCOeqB
	 cEiPswBPE0/mB1a39ZWtdyCYGr6yJcsobmv1jvGJwtQ++ZEbeB9+6dAyxCokZVAJM8
	 rkh/ye4dwBTz1gFxESj/3UoP1akxF7tbitYoPpE+47RWpskVjWTPaUcDWm0p6nawPk
	 7JNxA4zhPrt5pe+XO949kjX9Acycmlx0lYLdxI/gw/4ZjdqHbomlDsx8QLk26Pn3Mc
	 crDtrtnuIIAqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CC6C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166585745334.9518.283361079521708309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f3d968a84a25ec9c0b7953b9e3aac7b574887bfedf40b3092ac5cbdae8903e
Date: Sat, 15 Oct 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665857453
