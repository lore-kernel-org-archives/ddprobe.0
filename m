Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E91186F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA34C433D7
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667571654;
	bh=+d/HHE0cy1EKfLy2ZoIgJKWlzU/YXRSHbqJi6ENvziI=;
	h=To:Subject:From:Date:From;
	b=KIFRVDE1vVcR6xGTDROJeFn4Gr2jpZsUWVEzKr5nSLltxugSil6wC9w7Kz3X73wcP
	 b3+T7H6RIzhIG0gPJm3bCOHlgjOdwKbu646CHsAb2cqCXOe6MoIBxYG2DcpPecnUmE
	 L97RoyWHoXWB9nMWsbuyw8ifmfJN/sAO+v4XZlhNLcuWqaZOOx6GaZP/N996O9M4KU
	 7iL2qkd45NCh6N3/uyiRJy42PZ7iq17eo8NqmB+erlC8Rvr1AWt+WROvohQNwbUDxZ
	 3RDhZPDUUpy0FwMaDrWYyE8okTMIHvuCThKOo+zIkeXohNggAEop+s7H7gsf1uK9TF
	 GUV+7DomamWYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FAC2C43217
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166757165432.26797.17274755972921554828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c51633892c3354e7e157724827328ac10ef175b7d116e04cc28cb73523ac4c
Date: Fri, 04 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667571654
