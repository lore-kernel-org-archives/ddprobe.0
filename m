Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9749C8F45
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66D7C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687717988;
	bh=utybY34jHfe03Cu4ZGgfkWgQJCQGy4+2ePnbLbKhCns=;
	h=To:Subject:From:Date:From;
	b=Bq3CDmIcIki8itWe6KwowAhnKiCuawYAjlyN6NIN32WE3+B7eAxo+oDcCmaZyYJlj
	 SRfixL3BSwVk0qPrv38fa0QnTYWNZzySSuomkh8sDQN19G89DvvBrZqIF6fVCoy3PF
	 tEd8YG5LJrq5e47HtSUzp+TXKrcSH1H1mzy3ro14IIvq/iPUJ7yCvc8K/p/aDy+Kgh
	 Rmfm2KAMik+rE1FqAHKrNj/45dytYjdg68vZWV5v/Fh2nQFKN7AGxHvT9pm6jZQlGT
	 SQjfY67PRcq5NwQGyulgF62H/md4xWRVXwPpBKE+Zd25pLxpyqn5zW47hoMQk624CI
	 gw8DebID9JnFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4FCEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168771798874.7644.16097194715733752073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ca36b95b8e35782673ac2df6beb916400ea3050705c3c476d3f2591fc7abde
Date: Sun, 25 Jun 2023 18:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687717988
