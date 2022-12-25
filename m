Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB12636E
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AB68C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671928287;
	bh=F+2+EVMBfdxmLH99/+6S11Xl1+8inn8a8TzdRA/oRfY=;
	h=To:Subject:From:Date:From;
	b=Qh7HCHdKMyQluleuI2oO3gJYsnILOosL9LQdTjApJ/023I/m9y+qSS6X9ln5vEoyI
	 6QDJMQoSusQu4HMTHdxcpCep5O8S5/079ryCIKi0xrMd6P7HXMtbTkwrxAxw1fhY03
	 ZPsqQDwHkHQ2YCUvKiDiV+s3UeAbqp0Rqk2Mp/XLne9rbdqMDI9DGfmUaWX2+1CK7P
	 SoBIsUPMNkVVmhlpKw2oCgOR9JQvGgDsatUtHZqQ6LM+PoZHds+lRD4l+hRV4Qx3HB
	 i8sBXZrwBT6qFPiKz8OsdUZ0O6+/TrlA1WSq4pthHIQGzvvXJazQ7NAU2yE6RtQUae
	 yXVZ3zhjSytEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F524C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167192828742.20694.11978788099220295669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c09463ce8d8292c58bb09089125a8ed668556b5ed323354023c7f3dc7c48869
Date: Sun, 25 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671928287
