Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFF7134D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 22:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A28C433CA
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 22:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686781028;
	bh=uIz2vs0eO1vmXfIUbUuZ6Jhgfu8ij+oaFFKGadg7Cws=;
	h=To:Subject:From:Date:From;
	b=ijuFsjtOs5L7K0gRg4jteqNPWhULhGy3R1fSiXkrgn5kfvUL+GOO922lZPv2hO7gk
	 bfD7hTJC9LkmLTQZ4DjlikgK08qCxnKp4+oHsiNbM3Bn1jjsiTOa7ubav5NZywBHo6
	 RJbfOzVnTcjEPvUU4JvJHPq23ErBISPxrYRkXsFGFYpbE7yCGOCWMSv6spHWAmBpeW
	 Pf2XOvLlyhhmUP0JvzhkExGE0dVrySXZJjkC48QHqG/PTa0yJHoBneNcs812hkkgbl
	 ek8TNL5bqxs3bIZrxtI6i0Catsn0e7zO5W1Aw8Ug9EZweHb1mkTlJbx00pu/5CNmkj
	 BoR2jZNAAG7tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97D0EB64DB
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 22:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168678102873.2618.15352969878451299260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5a32b108815b5fb612c73753de9dced79980f69eb4ee34dcefe07fbdb8a370
Date: Wed, 14 Jun 2023 22:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686781028
