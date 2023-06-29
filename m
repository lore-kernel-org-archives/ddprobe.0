Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765FEFBF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 22:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E187FC433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 22:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688077388;
	bh=STgj89hmI8gP/UpXoqSskGngaAlN1ePYkGWs/kHyTMI=;
	h=To:Subject:From:Date:From;
	b=gb3qaVt+KoWOwW8Ay2igR9Q4VjUZv+gx7IaUg+KdFBbgfx9olxuIlDg6U9h/6y7pm
	 LSdSfgLwPpOdnqHi0ymYoIGNV3wL4OsjC18sjDxMUx6bPYkJNY6Zs2I5yx48B928Ry
	 Cv8xPPk95Qnp/AsP/5MRJNpPitrv1gFr3aomwy5Tk9w0+0cKeSwffbSDBnNz6qgxny
	 P5EcwHCdCdBi2qckgmYrkhbbmk8Vi1DRf7PQ6csdlRSVSAeEgmNFhoiISfOOEEmEvx
	 UmoF/WzXE29BiQl7bZGM/+u5WcNoS2+eXyif1j7bxIlTWizwLwKbqL/7rKMQ+dcVPD
	 U+hMmP9mA7U0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1402EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 22:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168807738878.22872.11273427500279139138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a255137b7513351f98a7c643b4d82c1c9a044ae26d5fc67fe9f2ec56af2c6e
Date: Thu, 29 Jun 2023 22:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688077388
