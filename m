Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0F93C07
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 22:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9042C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 22:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694385848;
	bh=I0AG+WwFEDdXPThDLts0HRU4U0qsvpvj9S/XiqoADBw=;
	h=To:Subject:From:Date:From;
	b=DFNu1JYxWfH6U2xTR+rTPX6ZQqXyXAGC7z4R4ohosv5ntwzxbaIDctnRkv0tP0139
	 WgbYVN7R8zQ4VKb61Snn+Ueo92XTiCdiCLjeksWE6pZwob3zN3wRF3nupf3Ahys6JT
	 ozEbJHruvyQCQkW7/7Doftf/3mI1aJC3dCfSDXvmDqYGx1KbqiVdLZ+XyPC3MVuTix
	 YI+vrSv911966Q/QzEHd/29QKm04oR2+1HrlQfRfbe1oeusST8I1WpaC7O3KtCaBQf
	 DJloR1mryV4CuGNkx3AnBqSN2fXEOSBOsJBerjlXUxT0i2Q/jtQZ0PnRZcS1rrvElX
	 3percD2zeTNhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B768CC71153
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 22:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169438584873.16021.18193691306160876537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75f5fc8c41a26e9fd44930311d57ac92b021cd5ba352df8d47611f7b55f8347
Date: Sun, 10 Sep 2023 22:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694385848
