Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C93D2019C
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 22:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C698BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 22:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692744248;
	bh=fKHT/490WPmjYg8QzxoZBMRSaWW9G4I7Zrg7amJBic8=;
	h=To:Subject:From:Date:From;
	b=oErD12a05R8YkRbX8KzNkyhnD5ZIZaDHvs5rGKcZhIJopE3gT8vsdkYZWnApS/Dye
	 y54JVmGUGQKeEXDxqb7LkOlhmDK5WsxeQGqUE9ofK2GU1vckVe4PNbuBlMVArogEgn
	 vZVsDNlkL2NVAFyW98KE5i8vgoNGYAOgPMp7FDJVBuloU+ijUyNm3c6lpbPViYJKBp
	 SIOmZL5aQcdBdt3IrMa6dsFpDNeGLiYd8nlp/i4n6hMj0VJn4pJXsB6Z24f1jMs5Ob
	 dMbBPVM2Sjku6s+M9DzzK3u5qOrnWM971LntdvY0AcVzRJz/2jEVxMP7rSPPb5nGLw
	 8ojKiR9SepjIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCADEE49AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 22:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169274424867.15381.16826069970638648562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042508144159e85634455a681cb2722af7be0396ba1b7b8ecd512b7b34be5181
Date: Tue, 22 Aug 2023 22:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692744248
