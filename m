Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5F1366
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 10:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D956DC433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 10:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678962605;
	bh=Ak1vioY44zLSc9kTCkwizcbRB51qwGZ3rYTxoQZLSYo=;
	h=To:Subject:From:Date:From;
	b=Dwsx3TKEwMS4jA3Xiw6juzWP2l8Ln+QwDxZNqBTzo41L7Ed5rcPbf0hK2sDf+VZF+
	 KP0B2jKfY77CRy7Yw5OJ+vQhUvLqJzaFcDAZr2A3sSVepxMBJ95yZLAhFw1amsvCkq
	 Fi4Qdhn0+jH33WCGHsPOqHE/g3ZRkbUSM32EdoaISW0HLoyrOUkcgiP2ci83wU0IWZ
	 LMI4qdaxOC8DBtra6ILDwihFksRHmzmwq3PChN0nE0Vn67MqTrRTPXcoRX8/bC6yq+
	 murpZLd+HKv3q0PoOJQ9B5Jy8GhKXSxDyEJwP6t7/YhFWu7LjejP+5gHYcs+rfU2BG
	 KnZzj9UlznaRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE5AC6FD19
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 10:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167896260575.28227.11611481999890714473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afff2f4c1188cd7bb0e1d23af0d16c84f8f5ebe95bc485a802c484f5cf6f32b7
Date: Thu, 16 Mar 2023 10:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678962605
