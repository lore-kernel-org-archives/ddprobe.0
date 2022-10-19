Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF94B1FC9
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76733C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666150253;
	bh=+8F46CLyOcU83NKkIj+hbHqpetII2Pb6VK1WSNVA11o=;
	h=To:Subject:From:Date:From;
	b=dAAM++T1NWy7O0CarahkhNqYNKlOIf2U5qNbY9wuY79eYgFzeo2cxCbR6ZP9Zyh3z
	 N5O5eEr8aH9uRis+cfqNkx5fjf2xK3NeGwcZj+3yIG/mSZJx1gxzJOowksUWZwI0JM
	 OrtHOMURtUL3GY/eD7I98rDynbaokpcvrXhtfPU9tXXt9EIQUTOtuv1Zpje33YWkg7
	 QaTuWtV5nzTTY+5AcOgCWStzmziwfSUp+Wwd9QKC0fVZHCGGQx5eKZPXzyUUtGA1aS
	 sFuOAsyKDWogqAeOu96zYoz3nF3gF3pCvE1ytXIifbGYhKZdeI4YbIBYIgiFmUikxD
	 2ED8VANmLUQQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A9BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166615025335.19181.14758373493903828127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc6d1976ece456efa9606c05687bd1ea08ec76991c8690cb7154de0ff69ecc0
Date: Wed, 19 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666150253
