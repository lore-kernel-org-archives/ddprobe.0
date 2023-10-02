Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5395A388
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 04:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EB2C433C7
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 04:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696222568;
	bh=e3iojr3I7aDuj9oIR1hSIOHY4cmZpzm4EO0pRZdSWiE=;
	h=To:Subject:From:Date:From;
	b=bjb2luKs/rIaZEeoRQyTDBEQK34TyhGMrdQf55pOnYRJlMu5J3kbt7kogh7myMWMa
	 xGxXT/UX9VH8Fum3VmwoBIzWGXSOoGesFCiZfd685pUam5eTJXMwPyhtocrE3CgaUp
	 2x5vqq5KXHF6Nbmq2KsicHif/tyYXOEdy7WhwyKs1Qrj0MPH8FR4aF4VWjf/pUZvPU
	 R59NgYk5wdULp1ZeT/AUOQscnaFaJS4nCsGNYPJLwSP2AXCx756HhlCJDZgzYBABAW
	 Vnm3mFosBoP/rFTYjxC+psJ95l8gC+pe+iq+t8cHl/Pq0Mdv9ZX5fFaEvImU9Xm4xO
	 knIu3S4J6Ag+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75A5E784AD
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 04:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169622256867.30586.8597688091852536456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71a7b206c091d70db53769da1a1ad0752001e04792570ac9ad747143e928d69
Date: Mon, 02 Oct 2023 04:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696222568
