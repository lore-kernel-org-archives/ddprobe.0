Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0C37470
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83CE1C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671729087;
	bh=uy+h1y3arOp9VFyzsURrvYleF5wSkSscou0c8S9x2po=;
	h=To:Subject:From:Date:From;
	b=KDrOaf9m2+/rTlP9mLxqmA36Ino5HUidYqnjSr9P4agUiLZu4aRhaTm1eWUZ/RU0/
	 KNuyP4xnmbGPTPQmmo/LITE8Ik9IXA/S17tUESFemoFSFEfmG8TqSQSyEnGyz57rmZ
	 vj2y4joIijFoLPiBVpa/h+J5amyUvQKnsP+4U9sFoIbK5aTDJxQhSHJQ6d4DRqEc7k
	 CAAcSdq/GmVhutXC7RilsmhV7oNUcSZ7N8CiRfwgBPXNF+LmfY5q3JPMxIdRXGLoLI
	 hTsh5clIyEIfEkeGvo4+aiC5zlLpzlNcZroOMhwV/YnIXhZ280b3m3tiCA9nhlvJ8h
	 bTrxlOY7eut6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65289C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167172908738.14135.17445543822984176732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea7eb0389eff36807c6d5d00f3d48791deaddf7f328477c2bca31912345ca7d
Date: Thu, 22 Dec 2022 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671729087
