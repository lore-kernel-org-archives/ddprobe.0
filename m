Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C4C7E
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D8BEC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669077654;
	bh=gDhkzbU1rK1YcZBYkrII3Vr5JJHyPOL8szgqmqrIvVo=;
	h=To:Subject:From:Date:From;
	b=oHSfCOyitIn3E7ilEKonLOSOS0u3LsGYwvXYrHB26c6odfqwTN8bPQ5y1T7yjtPXM
	 YRu5umw0LEHy20LSih6iNKpmNZvgGvhlM1B+AcFyeFDc5barsNA7/Ozp6FzMBQo0hy
	 sJQGFXlkRP1CwnlsxJU5JIn7yYO0xhr9XsK4qxLwQ2E94avEao1pPytxoD6zZvJhpX
	 KXzl/4O/D+18cqTqvkb2K2JurZkp+ZUBETTuCyJi9qtL2wDjmb5upugZbaN3DjQOJ0
	 qR6/J0vCBKskxFfbZdS4ZJLPittEU3p7Py3TLedBSSIpdXdoww5WiDS+Pjz33ibMoM
	 CGTUO2dqnEctw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E2CC4321E
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166907765433.14235.11573693598930278860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d2aa057288f2d1f6943328c3f4f89be5a4ba56c6b954f6bdcaa4f4c58a474a
Date: Tue, 22 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669077654
