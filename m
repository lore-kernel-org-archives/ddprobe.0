Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57591C17
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7760BC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664584253;
	bh=4OVNNpKGQb5CVaf49pDHVAQxw0mcK5i2yYZMIDBVAxU=;
	h=To:Subject:From:Date:From;
	b=rAtaDrdKoLQ8liEpNu4m/GLxhoQuas7YMgs4nQif7IObSX5X6zo2oPCzmoukcnFnC
	 hCSBZaFdPDMmODJBMwE+RT5gDCfslems+GPMZrqnUmbhJUzaya9x9ad6EkvyRaPnp9
	 YZZg/T6C7PZbfR0fFFYwKpqUuoiN1IBq6KXsoSarmgfNztHJ5DTOyLz4oRlv4U1Rfl
	 P0BIt76XwN1zI3U0GI038B3oGYx47HyXbPO7e+MCiqfGifU3Lf+oRNasOiunfmnODS
	 CwVvw+gEWwAvtKXMC+bD+opRXDh/ZOKprV+YfZFA4zyTtqY3TkI/m6EavX48wuvW+I
	 LGGsobngVC3zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C345C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166458425331.25776.7393727198874638570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95fedc459f2dd50b79eabd2e4ce8f004cb45f36279e41811b0a2bd9fa4ea7e57
Date: Sat, 01 Oct 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664584253
