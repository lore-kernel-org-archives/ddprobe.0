Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFCD6AA6
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcYD9jjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E47C433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698653296;
	bh=oUSYpHkCnzyfD/bFco2TerWuMJgORTJFTr2imhwZMhY=;
	h=To:Subject:From:Date:From;
	b=mcYD9jjZYak4w/ZBJmKhL01kmKTE63n1gEhf0K/1DunXJgpipd2zxqLSb9dNRS1pq
	 jGM7H4Kc5mp6C5hFLZuCv7neAeHhvfZAevzuiDsGn38wsUMsbUjJVJGiafWuseibAO
	 OSmolmfijgZzq7QJ7zX5kO2sLvfUpZra0MLEbJ+JWvuaEMBD4oY2BeFG2dBue2fiVo
	 7hUUElw/dZN7rvW7Lq2SCsnZvaLPFFsZU5czBQwz+9NgTh6TZhx5BOHZNWwyUCC5tg
	 /tflrgHp71EE6A8om4dxWXfdzV+CaeosxHfRU4B0E/I7nCAFDJKNjefypA/F7DfsEF
	 JlXh92q/HT2ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68009C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169865329641.30044.12315798734006193654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf8502aa0e6e53ee0b9c95eda433be673b70cc536a6736991aa21a922e32c5d
Date: Mon, 30 Oct 2023 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698653296
