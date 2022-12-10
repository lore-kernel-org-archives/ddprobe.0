Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FEDED8
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D10C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670703087;
	bh=RWrQzKUjWBag56KPuZQlUHNIlKX9ZJHvBBDsCewj6Ck=;
	h=To:Subject:From:Date:From;
	b=BYSQalSfc2vHvOClOXDD2fNt3bJpAJjF/UNV8yVWkGZBrI3aMIyCJdpJp+p+Qhcwp
	 5KKqsuDyILqQ9LlIPAEJTMIqDlO5oT7O3UyZ9g325ej0E0RR3YKRqZmYjOAwlIWoHE
	 F1ZkO/LZPPnNZ8sNg4jGgSHlANmCbzr1xWU3B9qMSNOQ1ZAWMtkblEJuCWC3cKlb6o
	 QMvodMo8u6FrK1uEljWnzhOvEtM6qCkIo3Hgwj3VxLcz1mLI0Yqg03V99OnElC+LoA
	 NgsOcyazbgzxc+5vDZtkBeTxuDgz3BLwyhQwS3Lszqpnhen21D+jRX+TC02iQvM8Qx
	 1PHPD7hIK9Zmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E67C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070308739.2213.4566410385697954532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16be6518772c360dcd127eb915f2bba9804ee17b1f2979078754d737a703204
Date: Sat, 10 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670703087
