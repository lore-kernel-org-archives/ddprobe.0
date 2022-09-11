Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50D57F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64310C433B5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662921653;
	bh=p+n6oSiifaIR4C1EkWAkygTMWOyIvDSfGU9EoylRFLg=;
	h=To:Subject:From:Date:From;
	b=kQ1jINuKyAGEYKNEu/+WLOntgY8Gx66Cv/lvNxpWMVrZQvvVK1TOJIwaSlTrZrtBR
	 KFZMjQMNs9sDBmu/Mh+O6RdDLQyLLrhC1WV5m71Np+zC+890dr7A/5SPTD5r6ntlPK
	 y5B7vXezZP4VFdNxTIU60IBWmxGJQPlZuAABOrMTIihysaQu5+aDiQlHyd8mQ/Xmp7
	 a6AUhLQILlEb9PVK5ce4ycNNCu0bEqQB6NBy7vOUTsnGqT7MlbVmgLW4l8hIzeyK5/
	 +0fetijUNIvJu2gzjBJ7DfGYcnQQXDU5V+GFMcuwit0HLczHdGvuOMi5119z0FoR0h
	 +S3KhH28zmeZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DE53C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166292165331.31413.3585621051044469127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3204dff327d3b146912c74b70154fcdcac10d3699a95ab93f352549d6de24f
Date: Sun, 11 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662921653
