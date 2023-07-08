Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C96C1FCC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF29C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688827028;
	bh=qkbwnIEXh5KGz4sZsVzdlmYuTcb+uLzuWnuJPnaQyJE=;
	h=To:Subject:From:Date:From;
	b=RHESdWJY9miuARvP86/V4ZW3m4Q5wt7t9cxQ8x1hzcDmyDEqSfI3UlBHELVr4Ozni
	 pB5QvW15KIYb1+/xhgeJUNXBi2Sall8Blxo7KR2IIMZibxkxjFDwCwVgEVP29LkDEt
	 fxXjqcciHD1WleYe7jwDzw5GlM28D31qFeWckPKmZmvGb+QpvS8f4HtSblxn1gk+0g
	 KQ+L8iZK6ObNG4p0xYjTkOU9ku9mewmfEwrBxpIvxu7KKwfD2RxpBGN4kNnwToGnap
	 L+bbh/VwhhamRZAjxsUHxq5wIg3XXGxEN+Gfiblt9c+oPGHObnbSNHm0j+VTb0nkgd
	 B0JMgd0jWDtFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A60EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168882702872.7084.15851160520936286914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72dc0906ac83de2ec771baece087032b16d89cadff36f4327c085bdc535a1b2
Date: Sat, 08 Jul 2023 14:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688827028
