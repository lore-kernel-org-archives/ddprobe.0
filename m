Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6779E210B
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 22:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08E41C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 22:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684537086;
	bh=yoDdSinh07aec1ucFdQfp/6XL4pzBqGHa0RlRljK0bw=;
	h=To:Subject:From:Date:From;
	b=EfpHe53lCARKcNI6KWSgLKg+cZQDNlG5kTn78yUZvUzzJfIKhdn87l/rcqOisU8X0
	 IM5LwQDWnRPpeEwYW7N6P0mrgzkJALaXNjqE2tse/UZRygGp2kurbqEFwJErauwfLl
	 9hXXQzKVRrpUlICIZe7g5jPf2aXHMvGKiXyPAWcZWOpW/8XDHhcLsd60QH70zKFkoL
	 UB6krEOqtBDDdWcADvwA/x2OXh+7IXNMft1YJACeu6UVyabCYgyyxH5j4fU60Qff8D
	 kMeE0k+O+95MjLM2+01hKChiOlnbwUcvg8o8S2v7VA9sgyGBvTq/7R8vRpTVirTyRW
	 spXyPikdaTemA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7F36C77B75
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 22:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168453708587.11996.18319931589207964220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0428162a402140e932d7cecf395a86030c1ed437a9a9137c841d60fa98237d
Date: Fri, 19 May 2023 22:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684537085
