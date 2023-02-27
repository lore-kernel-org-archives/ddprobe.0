Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE8C808
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 08:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6255C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 08:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677488165;
	bh=TJQSNYZcduBnGajm2JG4OvfhFUkMJn4hxx4zkLZvmsI=;
	h=To:Subject:From:Date:From;
	b=MM9VWsaPF/pzzWv3dI9ImtnaBnNBOilmFbgfOab/e+JA/RWptEIAJ+QNcus1RR3pv
	 6wGAJC+bm74Ft8ekwo4E0lvgeIrlqkJB8nCfxtp1OaCK3jWnXgFAeg5+TETPHIAY6O
	 kokdu5wOxAqIOaDzZjhKdCZgNdV+oqDh3v7iwz1IEoAcXjUDEu2jfhUwjz+pz6E7fA
	 lkesYFsmugQmcGwtxFEdeA/GXFwc5b5eVJXMira34NBzKm7url2S/bdZDRVwUQWQWE
	 uifcH/EjbepbLxYegsDMhL/VCtR8YHcDU+OEWL9QWlQnJQoGfEXBAZtiiv+mQVS+Pd
	 F3TkgEiOzO/Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83E4C64ED8
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 08:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167748816581.14818.7720909701259986949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc918bd4ffde7734c1c46480519dd9500fc5893d44a2b96b57599de27650ba5
Date: Mon, 27 Feb 2023 08:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677488165
