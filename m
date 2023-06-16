Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B58F2109
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 21:29:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E38C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 21:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686950948;
	bh=tNu+XDLyjjglBTa55AgvkczKMEmQQQQ5ZpDDddalDA8=;
	h=To:Subject:From:Date:From;
	b=HtAn1ZJCHqJA/DzK0FKCeF8U1zNqpMMBa6X7Yz3bH5Y/JlZLfkNe8xxt1aqjSBel7
	 U+a0ic1LqnUiHygA+p4suyvZsishkGVrsiYPdIojgQmiZtd54ezWe2QfZzExQ6eGOE
	 nvP/O4ZETPiRM69Bb+ip+jWgxyVyjci1aXirasgr4agp3B41wkIrdw2KGjavBT30Jq
	 tOVSxcQNhbqafA5aI3NXk8Pba+9wBamWj3C8Nkx4To9gfLctAr2W1uo2Qoy/HWnWTm
	 I8UWHDbefzT3xzedI5atuHnCwsVMJcViGNQQZC/VcFNCEyDummVITIQkzmn+49SDpf
	 EhJqjTpWFuv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5FCEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 21:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168695094868.21868.17511337608601340243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3c5645b555f827ea41c857a6d57eb3924d38b55dd0799a05cf22f3b1ce7a17
Date: Fri, 16 Jun 2023 21:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686950948
