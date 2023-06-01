Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02DC1101
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 00:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6D19C433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 00:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685579645;
	bh=izPy4VppHdTH713/CGwpX78NvhnzJk1xaJA9r8lL/0E=;
	h=To:Subject:From:Date:From;
	b=G1FtTnp4p+3ckjWVNDWBdSMK6nai5/9wdiAqDvn40sNv6lpM6M0s7zjRYoUZGJCAN
	 iKsmjW6uhPT2UhBPLa3QCOL7NpD4C1iW0Kl6iouHRaVlPF+mbmRnW0IQHZVyqUijzP
	 c4krisiTflEY22lOTZ+u9Fg3Z0o7jTV/1QHeTnSy1+wVsQTpn48aeO6tZZ7ORHzkeG
	 OUuUUMzuvkSlBlWAZwSKCO7zPWzaOZnLrLB+Se/+7j9huj+d5sh4EPqmPiGXM5FBqr
	 fmbpd1SkqhuHp/pybKsx/aza23dXv5BbSLP0MHULXVSL8BeXN1HangG7ppLxZjseoB
	 bM7weCaKWus3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C395BC7EE23
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 00:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168557964578.21925.15495960833800858126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43b397a24dba31ba540dc14621ad121ff8eabd198fec4bccbfa819ce12baac5
Date: Thu, 01 Jun 2023 00:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685579645
