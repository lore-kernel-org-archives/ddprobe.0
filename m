Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB11B7B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F929C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665730253;
	bh=cSDslFZ0+BUHxaGYhDjsqhS1y7hb0fHVMqfDX8IDnvc=;
	h=To:Subject:From:Date:From;
	b=gh6L7sMkMAv0wfN9i+vl6rdR8rJuqIx/PWx5fbrU63P8IqC413TlU6OBz/afAmtP3
	 m6zjbKIoXJpE6BQzfK/L3zDviaVi6MTcsvvZupXAzRjF33H+63y/zISd8OE5aAePsG
	 NJ8qIMOJEFX2Dj8iWQS7lWHykswU+dj24Ktrys6UBk2ZOQIrSpuel3BumxEcwqrAPQ
	 d1feSsx+zunDEWC/otl+mK+BRmlMQ5NAHkKURrfRFQ32wWnLyBKLduJnvFF/MaRIvz
	 2cdGGJpwQr7waAtVwsSb6kM8MhptRRYKZYNMdEDpRX5ME5g8sEyfH3HQlOCK5O/Xjd
	 vL0o9vwgUGiTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534E2C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166573025333.2161.343429515936454393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a50c59321f325a0c1f5b30334ce206ab40a1db98d9e1d9aedc1cb08ebe1009
Date: Fri, 14 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665730253
