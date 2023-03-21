Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594A51078E
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 23:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06765C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 23:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679441286;
	bh=hCptSZOd4i6WZ/kGIm7K4HOpWRdK62UH2pCDdMAnB0o=;
	h=To:Subject:From:Date:From;
	b=UpgcuB/V3tN0pZTS28KqXSnKQJMrV7QMBKu+wniJCqwdxajPfEx6CWp65NfS9vF8n
	 WMjIzZzc8gQkel3LjrHwZmrRen2+XsmIMof7hzXmopVBdPsFFnhQSLTzGVEYFchjJI
	 PnZYpUFYMlLHKfvObGIhvkTaRP902b7Eu4+2CdjKF1shZ/OvY4V6/elS6lLmNdPcds
	 JyJrwuPTyVz+xNMtDLkFI6c3deWZZ1ayBj1U8att/8XiULJ2ep0o/IxXi1YzQ9NZB8
	 lBBMS54VMT78qpYUrPRTm9IJLFilIykHBj+G7PpZWtH7EJTuwEbY6OJKeJlfOwK5vb
	 H+wYUfg0B/toA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D90ACC6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 23:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167944128587.3626.5066247555904082313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55131b7e4c883a060e339c42ac227fcd93d7f1f401ace14454178cf9b2e437bf
Date: Tue, 21 Mar 2023 23:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679441285
