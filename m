Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527CC10955
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 14:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C529AC433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 14:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687183928;
	bh=bpf7gJ64he0YQ+IfdLqjxT+CxmeXTf3XSKk+Bh+xVro=;
	h=To:Subject:From:Date:From;
	b=WjjUWz6Om9Ga1S8mxQzLKF2J0CwgEuE1baFndfRDjFPC1shFWiWsmVk57ZCrTQD4n
	 jVghlKueoqU41xA8OPHEorE2MGpFxp8j9jkG7ZiOSUdtFnv3gVMYV2oxtotYBVrh9m
	 rbo4Eub9N7sml/bxWkh2sUrrac3JkbM4I3MnWxj2hbcgcRwI5ITdUq6zv5BK0/cKoI
	 l8KOS87yBm2402B7TUBAvPSExLDDWoJtrdNJuJ7a2xdjOQ0Hvly/jXJQfziWhthaZd
	 /yISkfA/1rHpanXOY3PRJ4IXTjfHKaKC9quMsXsaS5N92P1fmYaBqRfkyw0VN2wv1L
	 D36UTDrvPS9+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9F0EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 14:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168718392868.21050.1786037545780242012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6dd1a73e5645e5bcbcd277a6819eb8f3a8e081788190ba82845263e367bbba
Date: Mon, 19 Jun 2023 14:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687183928
