Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB63C7E
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7401FC433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664331053;
	bh=PB3t52s4nQeAYQltUW0OcHTi7B++PEalYN431glnoPI=;
	h=To:Subject:From:Date:From;
	b=KF5rC41cIuj7IojcfVFTK9jeMtRlEAASRyJ9UyOYMrViWyHXrFmQV1qtq7fr2RD7C
	 QEWviR/AQIQ8ubsbEjAKrfHMtSquaknfnTp/+R+mVg6jY9a7d1ClLcWAUezoKMmZ0O
	 yvG7s9RHCdoMZkjRqJ1U+6NeUEIGiqZQqo+4UV1gbTCBjKTDG8ICA8mkmipHwG/X1+
	 ID5mUrDy6hfzUD/QxTqqXdaJDSQQ8gTUmT5aB7EXSGvnbaPlSRhh5kUvABNp8xmpM7
	 s7tLCXigTeLDpnXDzJXcCJchMsxC0NSQv7aUK7Dk1drv0pEqayRQp3YKBNitAbC4gL
	 vPSwsBJHmn7vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A10EC54EE9
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166433105333.17138.1578378148706074604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66a7e9db548c2f8fb816b2ccca04ef93810bfa2fbe70d4bfaa279599d4c549b
Date: Wed, 28 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664331053
