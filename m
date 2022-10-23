Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B377B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 709D5C433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666533653;
	bh=/DlATdMNgFc+qeG6bYxAJ1hxDWt6HdGbSEUmQO47i2c=;
	h=To:Subject:From:Date:From;
	b=WgRyt+aWsEUkcnA+r65uuUy1xNeTglLVbqLKx+69TrBq7RRAepPfDbHwMXcJeT10e
	 2rOPBz6GjeIrXor2GRN1wgFNTRWxWb6kaqhsNDmdGBJvc4AgGzdgiGqOxSkDyU/6D1
	 TNwrzX+QcaEY+jbDL2sGG0MAqlxlppmv3hHkZcEO6ASeEEgc6uDT8ZSYa11UmmIGMg
	 fxY1bx3mvn/Ll36VvfepwhMnxmmaFXaX/k0z/m0tNfUh8zAV6iiLUUlPv2fCCdWkVV
	 wKtbQ/CiBH2OwHJHQgysa7IVwCHwd++dVL6sfITwZejrn9YdGg5tWkNTSdj67h2092
	 MoWtPeCOelLGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E83ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166653365332.9638.3500204821481053807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39fdd98adc55dea800d182bb161f95d59869121a4ce3721900b715a5c7a8c84e
Date: Sun, 23 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666533653
