Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408A9C15A
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 15:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD098C433C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 15:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692025988;
	bh=xEl0xQZqk68/fKh6Mst2jue7VJyxl1nTteAqpQCFZVI=;
	h=To:Subject:From:Date:From;
	b=GDrJgy+I7sTanyiNdvNnBdtfVha5AWwHkW9gSwyYghlIMFtG6Uf2Sj95ZUUptGmJK
	 oE0uqU4v1jE5v/E698cNs0IldDmUxRY3Rti24rWEc2Lt9q8ASFx9h8IODWVYQaA6Uz
	 T/tsecVW5wY5FoE5wmw1QWU3AjxdtOyAlBoMcZDxX7DIBEku9+6ju4wTGUe+tbozJD
	 WLEw7k99kFbMVeskvmveJw5LIsPVzf3Bh5dQrobT8rbvQ3zkyLAhN+DOiPCOgTiiYs
	 1vO1mQxeJ6A/psL3iUcI24N3i+S/xQ0VBa2Kwy4MRw5yEj4g8K9UdLUdKF/cu+dSYg
	 RT7B0mtMcjnng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45AAC001E0
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 15:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169202598865.31803.13268307252447042619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196edbc45c4a64a12b015d2ef1fcb2c3c6f63d335b085f1dadef1f43b43de569
Date: Mon, 14 Aug 2023 15:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692025988
