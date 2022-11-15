Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B08341FAE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 657B1C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668480654;
	bh=tX9pxAmknUvRXkrFz1f1KPDNa7CRSx6Sdw8hCzBdsFg=;
	h=To:Subject:From:Date:From;
	b=I+2ktLJ+h+HW0D9ZOL1Ys5ReFoKIwlDv2PPIkOx13vpWaoQ1UReJwAOgEcEO0HN1v
	 cNtwASYA8WH3wB/UdtlB/r7PXzJGPR4cEOB/7g9g9KdF1x9vMI3kBgCHBbBTcTLdTU
	 Qq1tURfOvhN/o8k1KnHytODP2iN9ZOb+uCQ/gQcYft7u1NY6VyWlJLho0i7wV+zMN8
	 QGz9miZGjYQRNqvdl85ivO2G3NG89IN7w9TqVqPEfJZ4oDQyC0sJy3xI84vSKKODts
	 zr0/Muv0c+sEbXetW0SxbPdthDDv7ezmKhaJGV1o0ir34zfpa6FG/QBC5uedgCZiY4
	 u6TcVUFxNJwyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E244C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166848065431.19141.9763445475793352637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb8b71e2d2e9edc599c2073334b615a1f666879a471abcd90ef13e04386494f
Date: Tue, 15 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668480654
