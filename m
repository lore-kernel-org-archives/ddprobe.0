Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC50D139B
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7538FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668397854;
	bh=rUIzYhaPJZlAS73l6WjRir1ayD+jM2yH2DaGWIcuCsI=;
	h=To:Subject:From:Date:From;
	b=j+5NeVCc+ljkZHbOz/liu59UpB2yQaVhg5Oh65AOCEFIJdarSj6OOvjDG7xXXsBrd
	 rwNHhyA4mR7UTaXc7Zmzj6/9k15gN/WvktJSrhbXoByWIHCvIhENCpNGgAbxIHyJFj
	 A0lvVeFIaUu8MwMBDO91VkxjmT43WWJDNmRpcQoFqRtO049/b4m4bqghGJFbxFc011
	 ORC0fc4HWipzu7//hCXy/c7/AUZIVDU1rZMrayw4C3kUq3OLYdgYNq7JWgTC/lLDZK
	 2b7XsDd5sGVfgyac47/RSfWur5OAkmbY1ph/6zLkM9quwukzqUeXWJ6qeV5oi2NlyF
	 XDaoN/WIh9/Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5531CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166839785434.28797.15672122491221449853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc5f9c71e2434266249e5df438625465c01cf7bbfc6c6b557d21b3a16c2fa89
Date: Mon, 14 Nov 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668397854
