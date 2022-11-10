Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C693539D
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 746A6C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668062454;
	bh=+pcU1HW6OeOp0SjcoLu3qcLFgeI4dnPR06h17bBqzRI=;
	h=To:Subject:From:Date:From;
	b=KJpy7J1ZWoaBDg5BhtyH/Wu14AD0/cZjxDJ2DB+jeXWBH25Dkk5bLq2AIM70V+KcP
	 Hn/ks3xnZN5Xi3Dyg0rcKPIK1BRo00ybk7bU19wqobxO9J1o4b0KcsYE6zROij066w
	 ZDeW6N5l8KUENfNLE+DGIBLy8oytMejsez/gEeEgUzIhAp8HQvnzOujIKOIl18vM6a
	 NeU2grQifIvK1d/S2aNdEpW61wBb2dXFny7HBMMRT+EZK85WqUEDFDip8l0F0jArOR
	 aJeW6WoB5jV0nm5XgyP2yJCfVR3cnadl5M7zvYJeYI/zIVq6iEOdORQbIrUFJ4fxeG
	 QDyrqm2Yf3o+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F8EC4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166806245434.11693.821584153966015432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4073b29e67acbd5fd4ce036e123d76531cb41b464811c76a00e8320036ce4079
Date: Thu, 10 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668062454
