Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D8315A9
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 05:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3A7C433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 05:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689657668;
	bh=cZwEsqYlQUZWlrVPxm3lpfe70rv7Y98lWNldHllR4H8=;
	h=To:Subject:From:Date:From;
	b=YhYqISsY5wqGaICJ8Oxe4Y/XdQWPGg2gAX/MvANjlCptSLb4UXiD0Z1A1U64e6LYT
	 Xgq07wNml3yeUyjWW5Et3+TuN+4cfJVICOewv7G0ICjhD/LdMQtI79DDMOrfs2uRC4
	 8H/FUmeUtA+mDiUBlKDcAunjqIqND4a4q6vPYIYZ7GpdZczuC6sR7A5YrjGcaC0sVC
	 KE9rFnqgxLoSb1ATcByxbM0gV1FlTZ9hDF4I0cBeRcsrGe+r11auj/Rh3fTEtJ9/Cl
	 fZBHBObGx56PzhEo1mdQ7kRMZAW4X4KLlAo3nDyugMPuTkw6XpuTutSV5tYHFRrK9l
	 9YzVFcBhEUiuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB091EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 05:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168965766875.21740.5417505808671547846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61fb544eeb8e46658fad782bb7bc9388bce4a1f610846852379ba4f1be9e23b
Date: Tue, 18 Jul 2023 05:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689657668
