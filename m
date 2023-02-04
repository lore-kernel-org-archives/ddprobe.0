Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1C12586
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 15:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BF8C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 15:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675524965;
	bh=bECejruEjNqg0RzU7ULnqnPD5CHyzl9dYk4IJ/nDTRQ=;
	h=To:Subject:From:Date:From;
	b=MObOPKc/sgeHOjhyXzHF00twIaQ1mG5zxA7WEtWrSwHfGcLb3oK1SR566xnLZG9ZC
	 aKwcsCrWfV6lvqWkyXjIW2X0Y/OBJHiiQ6m0xcLRQCznWEdxy4/k6cMqf32KhGqaKU
	 JkqsNZ240/FEE8Z+KxVK694tOOjCPf724/yUPKh6o1nfyIIvji9pNy0Hp0WKenguBl
	 RCZ919Y1BNJ9eL5e32d2F4jnYxcE6f2p9uY9kXU7ud0+uwqJNxcaOOz+pwiFlvddTm
	 D7Gn2slvmE/RrILUR6qdYDhu/iaWx+lyzENhcoDqU1CJwGptQL5aKMD8gpUI/unW8f
	 dKJZh8XPu//tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE641C636CC
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 15:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167552496577.8144.11815864772864036470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398e9150934520f43c3bb27e1f13a09a6213d50114803559235100c5e3460489
Date: Sat, 04 Feb 2023 15:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675524965
