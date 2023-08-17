Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FE0A5B
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 06:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3006C433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692255188;
	bh=OR3YvFbHZyNE+ildJ/wQ4AiWNduR7PKvf2iVEeRxZ88=;
	h=To:Subject:From:Date:From;
	b=h+lkzcbVwNfV59yj7To/BnaotxpnvXuiGGdo806TlaTOewvFcYiamQe8EHfohWTZ4
	 oq+oxstLue3k55gBeCCqYel9fvg3V8B2lYazn5fkEtHAs2l4sYgv+OAhZ/fuAqmUxa
	 Ys1OED5kudWNTCC1kd+HtIqchI++sA3wdzIyjlOABrZdQi1Gr7iUuE4U3vA6pkxH3m
	 if06JQwx99n2O9fljTJ5/bwsSfhKCyaMeON2/28RVzO0H91XDPrlAj1ha/VGKPeQOG
	 fE5nXqpcG9+BiUUi0wrMmHumOqsIU7nVdN1BlUfL1QczeWisnQg4AQ9orYgHK4izbn
	 CU1SNrT/XPleA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70E3C27C7A
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 06:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169225518867.16762.3591405270024943768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8000772456ad470862dd6fcd25caab619708b8f68631db000f6d122fe49bd23e
Date: Thu, 17 Aug 2023 06:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692255188
