Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC45910E6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC1BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671502287;
	bh=7PcCkoAL/lDHGaIPY/yBEzdYZqMZ/h5O+NDmPaFQDhM=;
	h=To:Subject:From:Date:From;
	b=GMZHMsexbyFfYPi+WYL6JysNzgDg3iOuiJfK5AEdV3KOES1Pl8PpD9cPUJB3hYPsq
	 2KiI3hof8NPn6IJnTy42Y0HJ+1FuJzXvJkg7fHjkzIJ4uLGpTiPNB3BNP9NuyjO6wq
	 xKVHgM2zglNsMhAZpzgU/E04V0txTHsvkNaT5A4+NC54352K812arRMXnKhZz2atul
	 InNAV7R19T+d3ljRMmdtl+QECZ5BDLhowkR+885KoUfqwfVL4mpBB9wr1gB+z8KCzy
	 0hJ6FCzsuve6G7OxT9QdXe2tR0yZKfAJx5vTr5SmB6xU4XatdYX5izD+IrrAh/N2PW
	 ji2KSglndl+Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6239EC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167150228739.6381.7034522032780629374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed075c4b7b8424e712aea079f509fa1809ab16fd6e682f0fcfda3873b841d1a
Date: Tue, 20 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671502287
