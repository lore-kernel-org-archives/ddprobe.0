Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E854917D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95F40C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673419287;
	bh=uWwYrgxN26jmaGtUPAfmgjt7MIApUler0OZ0lg3gXZE=;
	h=To:Subject:From:Date:From;
	b=oGrSU3lX0l63DLQlZ4Y+sIg/CT9V0mt560p40qhp7B4NVDpmkVxVqDVxEwLJMWqOi
	 3XuULdxMGorMY/OcyWSUCeN471Kc/MoIgpR24N7s0IfVQFJk0nVS1JRfqw0uH7Ly8W
	 X4BF11P2A+QjSE4TdN2N0oxqx3zQoVIN6vElQCVtmbZV410oDG9PLg88PrlF+bb16s
	 jEeXD8KsQv+Enw6U9rlnkYBBsxOllyJiiAFZ3c3cRhP392N7E2bUs+Xnad5uOrEJaO
	 webF/hMcqHcZaID0Acv9iuvWgK/EdIMR8zDGtHmJmBnvJZKIIF8Bllv4Fxl8pAVC0v
	 Jy+n3Bj+TyVdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 713FBC5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167341928745.11200.14894144830187351628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b692a4f67159762ada86ec80505caaed228fb86f34c1dff49b17dee715c1847d
Date: Wed, 11 Jan 2023 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673419287
