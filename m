Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DC48C0C
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mF0BKBAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 921C6C433C9
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698398296;
	bh=hLR5saa82tYYvIwvEiE31tAiCA+JQHCzdEnZklQ5jxc=;
	h=To:Subject:From:Date:From;
	b=mF0BKBAqR9t7E9cdolDzpNuJz/EpD54QRvX17psm0MZQuwXgG087YCfJHQmhxbQTo
	 c5enJnuFq+QeH6E+HFtsXhtf4YJAku0elrGkc37O3t7HlgFqS12jFiYS8UvNIa6dIe
	 Nu2MWPeMWlDjb+9xkUebKXP7E155LJsFBA4vxSDeEcQvvysoWXSZBq6meuq6bwf67O
	 QWRbBekh2Gj7/LroyvggsLx8Ef7vw9HldvkC37Z4FsHbgPNJRKbXuR8RXhacZW0wu6
	 YlPF9bxNwQWXJ2T9MNmGnWHbGg3a3+5l+uvDPwILwPMKarb8znMMaMyDFXmjeJRpw7
	 xnSdt+BKg8JEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FAAAC25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169839829644.17323.528524817451339689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310f48282ed1dce0ade204d076f14670873e61daa226232151758b6928b58794
Date: Fri, 27 Oct 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698398296
