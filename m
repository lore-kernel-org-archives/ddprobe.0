Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40AB6FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B71FC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669906254;
	bh=nzM9kO/hnMM/QacIzPMw0mtOf8tvK9jMc4dxcQ+nQ7s=;
	h=To:Subject:From:Date:From;
	b=c4hYbWQDWyj/la5dC9EuZTn6RLyspIAMkoRh9+TbS9amOF/PAyqCEo2rOD3679xfV
	 csLXcPQBJ6XCocUGJso+he4DD1oXzZ4x6SOt36XXoiEakiDM9izhCkYSkHprkXK91+
	 p6o25Q2SmOdvTrobxtJmXeLxp04TtOU4kTLiOK0bHgA54EIN+X9X+E9MpH/kk8pewD
	 iQMyqRxuyeN4q6noJfV2GQpwcdFmAdBC2SfDGi5Javfnpy3JcL1dB11X267TEhe3Ld
	 hMJ+lJ6JhBna1lG2J3I1A2nFx0zb9f+4Ugsi8spD2lD/+BliIvEoz/4clhdebYqHbA
	 dxiFAauFbypsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C71C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166990625434.26671.5218940980736257532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970f7a3b2ef0a8a8eeeb67a986a3fd33165700ad5eebb55d6a20c79eaed75f33
Date: Thu, 01 Dec 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669906254
