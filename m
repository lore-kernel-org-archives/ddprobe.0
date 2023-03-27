Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3235B7468
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD61DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679946785;
	bh=sCzhWcXHtItz+AOsuzKyP5+x3DBCyy/DdgxPGixUUiQ=;
	h=To:Subject:From:Date:From;
	b=VdnkaNrYfUb7iY8xs+QUw5Px7BMEbMU6NORCsKOCX3Gh9yL1j0LzOzqRqJ6qrRbwR
	 l4ghcpP7JZT8tmc8bBbkcAB44v2MivAVb1MPpPaI/pZqzZmr8lcpvQWBiWsDLYWkBG
	 2Y+KUaBJKdRUCnS8pJFyJr0+jKk9z7hW6eWfKuurbbP+ngrWPo9wCJWHKGQcQrj3Ny
	 B5W52rAnkQGzXA2EJhF8U7xu+XkDytkxjrcdT/DtFJPugT1V/0qnCvL8nDv18V/0nw
	 CYgKLP73trujmJHKn7eXEqNkYEqK8cieVWw9/I9nHlpyHp/uDqWECAkHacCq30pOdh
	 Ehrc5/r/wxZSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF987C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167994678577.8380.17595915633584956965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde2309e7da60c101357cbb446782e5c5649eaec0a458ad86aee394350ac9d30
Date: Mon, 27 Mar 2023 19:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679946785
