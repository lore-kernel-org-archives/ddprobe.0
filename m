Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4411229A9
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 08:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2219C433D2
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 08:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684830786;
	bh=s7laLPqHldJG4uoulbqyo6njuiSTrcTfAdijfHwPcRE=;
	h=To:Subject:From:Date:From;
	b=bJYWs7u7i+UOznkT/L6drSYpAmf/r77lvsD3o+VG0CjPUviyf4NGSsIaVamDqvmaW
	 TVhb8R2xIzxVKRShzBYnOojbL+V5BX4FrGC7UrRZvTUU3Gw9Bgi5KFlmqSxZ9c/3wI
	 7RKpLrL6ABs5pRp49K2JdYmqj1l/7I3E1PImsvhv1ljkMvRZMiN366SwZrKhQBpzIu
	 Rq2gn+YrGl9/vouL1SLcHVuHBINWo0Ja6qwIDso+jM8RWdgrI4zHJEaLDaGoBRN8tU
	 NNBBL6bgx245RQcCOHYZRS1WArTa8nM31OhnHclUn7AXU6WYmVSMqkE8kVbtipLsho
	 7q/sNMx9Ytvvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D259DC7EE23
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 08:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168483078584.6815.17893948708033504371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60224e44b4b092cde8794290af07481c9149e3de991c6caa510cfd9c48c1e39
Date: Tue, 23 May 2023 08:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684830785
