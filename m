Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642F2E55E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 15:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1473C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 15:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688137988;
	bh=QtUeX/sG2MBEwQMcB1NGZVSvTQogKMhR1R1d2IqQHqw=;
	h=To:Subject:From:Date:From;
	b=Rr6ItsVU248qvbyCGUnNuFTBBtuepl5Yj7e+fP5Vl7PgWU6dGzT2GYFWtdlPEMwun
	 22ZjeHWY7PCiETp8e4oL7s4kd+na9tXHq+TFYasBhn/KHMqOuSiB6mo/Znxmvo4L1g
	 fElpbyWBOlbqlcE8SMBFr26Ok/ku2kYd0bvpWG3bd0kjqN/urftz77CCiguhCvfDAW
	 pYSoNxYm8BEpdjuEDbFfgBtrmRonx8s9naryJWMDm+K7Hn23N6GiHZZH1FIoQZkj/j
	 8CBhwD/iNWvp9Pzo16STN8ck8eA5U43Vq9UoSBhn4aJbIlI8fZ99ZvHzikG0VYEIOY
	 BHCHUyrOwz5Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CB2EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 15:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168813798872.19298.10274203655688390883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a25db17549c243584dc7bbb95757a2106ca343ed6113843fca3cc08808b46b
Date: Fri, 30 Jun 2023 15:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688137988
