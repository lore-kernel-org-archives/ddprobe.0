Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8FAE57E
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 11:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48FAC433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 11:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691492588;
	bh=N8qF4Tj7OxU3C27mN3ryUChyjovl+szsLv5Nf77LPBk=;
	h=To:Subject:From:Date:From;
	b=bTAaehGlm/Qo2ngfCh5i5+Iit99zQjF1xnkTaJM3/3gAgPuSERiAgfDoYOZfDccTA
	 zXEtTWszUE2BFBV96USgftEEMJUhjKVzt66Nyeide6xjv/x4w9G7GdHrLJYFfHiKSy
	 08/jv82RTxES0dxvrBIEBfQlK9bkGDspyrlz6Ucvd3x9tPVH3TlXYBBRvgSyk67vkA
	 FNg+u/zVlSDTjMXdggqooG9+LBra3Ln5IOY+yLbvGk90Nn1EuA8SLjWHvxGQH02yOb
	 gL06QZBRAF1MWPRUlF5iOp+ppO30JOE1XyAxoO5DYYDFv2KCF2vFyp0tQgiIgccQYB
	 JvknbGyUI+i4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67D7C001DF
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 11:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169149258873.19050.5901858234609839435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6027a1a030506fb333da4954a00d4cb3aa18e192cb855c929184651798cd4f8c
Date: Tue, 08 Aug 2023 11:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691492588
