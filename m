Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3A12F38
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 09:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E4DC433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 09:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693216448;
	bh=AVn5h0fdBfNwSAwkDONvmtfsNVT+HOmm0HVF8QJ0jbw=;
	h=To:Subject:From:Date:From;
	b=Ho6F6JIF+pMLO4DzS9t/EEgg0bepNVS6jIzb6n2dmQjuY0r1lcEFaUIguhDEQTMOL
	 1S3rA6De2y2jNqNd30vsvpwFhOeMntFTjq+U7j+cFQ0wT9JXBKX0zJqTgoj39aq/hX
	 GF/1D9IC4AfGxUrOnAWJJncBSB1HnnZ77zLfbFgz/tZiBY3cJupCkA3RDjolgpimt7
	 iQtJAXTxJt9nLh8hxTJiwo7QTaEqlLtqv5NpIo3Gz6ZHaFE9czP9kxYjRdiPiRyR/q
	 2EO/7k917Fqnqu23WnQQJ8A9gPFgXfd3ZxattbFAPoAvOOqqoXs6uSGQKACF7FDFeV
	 1etcqRCGW63iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC97C83F11
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 09:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169321644869.29876.604466656012213160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee68bd2447017a331ebf9fca64ab1daab5be19d0b2263a55ada0637c0d096618
Date: Mon, 28 Aug 2023 09:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693216448
