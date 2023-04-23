Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415E5A57
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 14:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5ABCC433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 14:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682260865;
	bh=mbcZOqCqvG/oo8vL3FZh/9uRwsx8RyEERxTr3sBGBUk=;
	h=To:Subject:From:Date:From;
	b=Poz4nz5bHSWne+OP25c7zFJNwmzYLRM6ER6AI2HqZ/vhLTreU0ZVVhA+NroYyXKrx
	 Z/8DV/UhkhxBZQPOWYgY+3z1t2GATnOfXT21cJAK0q4JEz5fvgZWQP3PbNW7oIfNIH
	 cLm+3LeSkl8tEjSUElGhiZIB7JhHj0RVF9XYCB0u8j3EPsBkZoTkbxU/SPSLhCiRDr
	 wj5iy0YQhzHYMjX1YxuBoGSfH5hgXLYjNRlQ3aFvJIF+174E2oggHAIDHKPJ+f9vIa
	 /okH7NeTuNvJ13CxSi2u+uVPo63YKm0pDxTwbN8d9NTE0N3MITLjvmafH1+bpYcqC1
	 jVrqFhGbezF+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FC4C77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 14:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168226086579.14716.2620634569054239037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170b1779dd7d88aa487af45d4d886f507719b736ab41a41420d5d04164e0434b
Date: Sun, 23 Apr 2023 14:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682260865
