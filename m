Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6054116410
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 22:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAED0C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 22:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687557788;
	bh=qciiMz1HPqzUlv1vur3OJ/U6UqWgE9jkBQu0gqMV9JI=;
	h=To:Subject:From:Date:From;
	b=d5KhscPe3FHBm+L3NvToQdd7Of79axRjZOhLsb2lozvJbspPOgZefi3P1F8ZT6m1/
	 /5xX/yZjFjoO5qfwF1Oj+5sB9FHONHXi/NIbgbppR7++3yX3EMVgpGTlrVnbk6ESkq
	 mVlGFDcsiurC3BbjfH/Oy0U4ta/OoUY5HHZMel2qCekS1evbgunOBQQ/FD4rIoCpAV
	 N79kFjSUVMOtxbPshF5/Fh9HuKjT6j/rvz8MKmFng45YrCfEQ1AanU+DerGadBZf6t
	 foVDAgi05hp8hGphvF1DjD8lzZ4PMTbAQCAuGoTePmwcw3i4mdJQAKcLGoN7GDalTC
	 +2bH6tlm9I6ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC96AEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 22:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168755778868.13067.17348946216841097215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a6a40399e17a14b938f623ab486d5699d7336c112e6aa5cb78b408546b2114
Date: Fri, 23 Jun 2023 22:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687557788
