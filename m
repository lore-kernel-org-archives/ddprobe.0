Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0656417F5
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jv0gO7ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7F5C433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698646696;
	bh=blFmxrC671z0EwQVTEeI3oGrh/5EisvF3YppZB3YNqA=;
	h=To:Subject:From:Date:From;
	b=jv0gO7aocz1YgT9/iIR8fYN7EjeACzIVNLxcJzWRlglwlJHU9X9Mj+nLKGIvuthZ9
	 XLD7VLO/kaBQAYiAC1aXIREj6JE/6Aie2cBztMbsIw6EBg7Y07ZohExufcoLaKlIk/
	 4ej/ARxDOM/lVF2UNoHdwCNMfGxM9ZIoCgkyvvFA1sQKcR6h55QSAIVr/6RCI3dSqd
	 w9xZINzIRFjDDba2IDHKax4NVf2drvM66FzKnB+s8TDVu5gcG+aidfjXJzQVMaTXTl
	 fgHfU+r1EBWCtQT/FiF/DK268SL57EyRQm9N4OBmRWsa2fvYgSraX+gx3GMuQtKPvY
	 E9eYp3zCJUUMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6538FC4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169864669640.10340.17083501782411910303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894195a14795f80e1b35fff0f1e59fcc781dd9b97e5432ebab65603a7b2a8973
Date: Mon, 30 Oct 2023 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698646696
