Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBCE37B97
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 15:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D08C433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 15:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686064325;
	bh=D1Q1gYIkqJsMa46hn0ogAHJabzLV9YGsmjQzfEYHyx0=;
	h=To:Subject:From:Date:From;
	b=h62ehoZjRPtRnqEVAtAjVaM0UqhMnYWNkSKlLBhJ/zUVQoD3UaGsrlNrQzHUoPKQ7
	 aQ32vdmYGndoDloQEgOlqwhzdmXhj5kXu4qj7B/b/+l8gQ3gWiATDTTRkw2FHQJAWc
	 NHQOiQ1W20nAMDb8WUeGyWfiRUMlKgwMDAuWsqOlIhQFaq06kMQKz/yUOGj+Y0Zq46
	 nFDuQQDgwcld99MC6sKI689TA6iStIMbVMIO2HWH/IAOBqCMyFCkTkzdmm3F3N3Deh
	 BKsoAdyyCFl6FZCV73CK15p+TvzQ+ARL3EZF+eisEQ4s/KUHiEpQZZPhNvxMjLIatU
	 T0nwsPPRIlOYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17F7C7EE24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 15:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168606432578.27937.18061717514390213423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e096bd6718b32ad191f6952f3b8ff770e5658c15b272624605debe3a7aee3ff7
Date: Tue, 06 Jun 2023 15:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686064325
