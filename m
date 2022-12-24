Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D8F20F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 892CDC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671904887;
	bh=fNhMjAzvg1tU1huTMIFii3gRgnRURiuXQxhcg6k1cy4=;
	h=To:Subject:From:Date:From;
	b=n7ej82qaqhy8NDBrvM6iahJ6QzrQLAVIcCM8C6zGfMQWPoX1gNfdIhbMhXPjB6J06
	 GJe+K0xCojD7lwnxIh1tIaPJVlkZ8iXCbuDIcvsK/5eQRFJaCYOlze4xnJPBPV6YUI
	 6CUf8gpvGnzL7bdu1uHo7FjfsP79/T6dywS3XiKxcKSrTBjGzkdlqBkTgKEwFXSgJT
	 1rzSxRzW3i1ZShfrCkgJFUpLTY1mcz1Gy489Zx+XNcUdCini0mi9udJT2lEz7Hc3Oa
	 l2oJqkyCBXWNJiUkNI8QRWCkUW/e5/fvOlBP7aJdxQjJghQ13wY9j5r1C8P4fPm9oE
	 Ws5EfheV/hL2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E636C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190488741.26315.906984026056894081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d61798bd92bb7bf204c554cb2c558856afdaeed94183ee1e39721a374e97562
Date: Sat, 24 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671904887
