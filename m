Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEDA35CBB
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 23:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779EBC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 23:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661815252;
	bh=QfC6l7FBkZFHiy7Ns1LjEPv7gcAlUwLo9XM3HBhv62c=;
	h=To:Subject:From:Date:From;
	b=C2ATbo17687L+A8K3asNkC8d/etfHmIf7VR1qQfzKjCq6G2TQWC2XUMKB7u+KH0iX
	 zRmPsNFqvcKZPT872T2xyY2BwRc+OgmTs1olJqQcY+TCKqj5Dh5UJgmjWbWwIam0PO
	 DeVqRfO1pYwWG27hGxbU+0lTnOCM/OV1mPc6V6Q6VmB1t4i+KULQhBQDJpGD7pbXjj
	 RupiQAE4ZVnBhG8mR7wjUaSqTZvbGHwAEIss7HQ5tQ3BxVRrmUNFNMWB07PmfwQFck
	 wQGujHQfFMMQof5g23uS4xI6Ghe2wxXvm1SoNVUuN8TZC5UAMNvwoEX7oSKpXb4G9A
	 o+SiwTpvHo09A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC39ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 23:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166181525238.16670.8663051173556744265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6810d096df1ca817b6ca52e5b048e2c7875866057b4a49173a50c3d54bde06f7
Date: Mon, 29 Aug 2022 23:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661815252
