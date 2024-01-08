Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C53552F6A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INK7m7Cy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AE0FC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704729496;
	bh=yxYxZfQPzkIT9Jp9UEgYYXBNr1uBJEOGxqbAyuuZWRI=;
	h=To:Subject:From:Date:From;
	b=INK7m7CyFOvYLF//TKmQQlvIT4BRRLejPX9bfwsMt7OHmkkM3UImd6xLZjcWBXRnE
	 WyCHuZksCQrjyIuE+JPAaIndZ93V/ovdYj745iuQnl84+aeDV89eOmiYivBWxHePMO
	 NUGKjs+JkCmqponbfSKBruLFfW8q1NQdrzsVfURLygZHqwn3S4CZYy9QMb+6k3ftZ7
	 hDzgI2yChJaPW8W5Hy8DZoBTDOPmVYop5lYSs6D3MaU5GXgE/3iMh85Ik+HrN8DVt7
	 eTTfa8pb5Xkd9EfLTH7FDYbrGsmSQ77XexKrCnZ12hTLqPnwoj3eSecPgyg9IJp6HN
	 TwrNjBjCV1Dgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D700C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170472949643.2813.1544866082150597011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3fe0afe735bd36cf2bbf162c46463da36610bef7de123f14ccf5d6abdb6cd11
Date: Mon, 08 Jan 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704729496
