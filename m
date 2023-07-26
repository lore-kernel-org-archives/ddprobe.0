Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8104179F3
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 07:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB124C433C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 07:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690357329;
	bh=mCqOwBO6l4PMmIcwOZcFjG5H3oNuXOeEQ0bz/gxHXms=;
	h=To:Subject:From:Date:From;
	b=rt80P0gIqBEH2xtopsNgEhA6vVgD/G4D8ce1jaK8NoCl62Qg8czv16TRPY+z+5q0S
	 WirS9VsTFYoNco2g+JiOu6JiDlwmwKcBNVQ7/2V1xNfxRvkNR6M+H7y1RNYaVjsTz0
	 BRVPZs7QVmLbslLf3bcScWTWAgin8hIfjwKqquQp2V13icnNRiw0EaKa5/DrFYnpWf
	 H+6yNzgEbe9HYw4y7JKOJWaGBCZ+85Dd3ToytuvDgvsWjDiDDY7CVonkTQ23rt+YKd
	 PgOu4R/2k3dB6Km13iKBOR75HP+YkMoBYV3WWKsby0N7zQ9/2chZkl6MOJ1ufZcFuS
	 fzzb3YmN2NJaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0768C0015E
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 07:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169035732877.18664.9828647951336303693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf2f90725b06617eed27f31cb94d2b09f1f735f12f36c0c36e4a0246e3b983b
Date: Wed, 26 Jul 2023 07:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690357328
