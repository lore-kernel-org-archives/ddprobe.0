Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCDA23A4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F31AC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671624087;
	bh=a46V5YZTOvsYizoNsXydorheibVPW7VLruD5iRfKP2s=;
	h=To:Subject:From:Date:From;
	b=nHJ0QcMk9P2bK3Ez4D35XOWFDafnzETpUesX8feKEdia+aEavKjcXD8gjyoZteWvb
	 f1mA05fNZ9hFowtCt6b7WrYvKEe3767CoQEExDQEQVgJQx4ZpsAyJP+z2NvEXGOkB9
	 v/fH8NSrcVhXhJsQu5IyYjjwliXLap/NcA3OTV4KdvQYumTmoG64ps/cBMLUVdoWSP
	 Aj8kP8WtHoDPsiERqnNrdDJvHFt21MWnx4/bBiw/Yw2XhXevZ0K/4hlva6CgZTHd8m
	 JGj/hRgE/IMFgERU3vgRpuyP/v2GaEKHVzs5ruxrrDe9kdVgVvvaRtVHX2EsokOuaa
	 pIY32L80kk6NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63757C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167162408739.4154.7720858923248759353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2c61520e18524775e72aa4eca1b4d8a723599df9bb02c08fb907b3c9133271
Date: Wed, 21 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671624087
