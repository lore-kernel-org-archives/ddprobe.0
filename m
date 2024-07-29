Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E951768EF
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722221754; cv=none; b=fFS0Rf2bdNfZNUsxmYHOwTHYhhN5XytSSxVEnopGK15IMrXDoLTUnWGYIaNEV6g0TBUUyeE0FU8YseGnSwUWV5Cx8r2Cc/pLZPjt7utuMpo6w4jP+SQ6CsNCGzEbZJwgkNyuRu5VhxGPNO3eho9h4aZNm74qgf/Jf0sHgvJrk84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722221754; c=relaxed/simple;
	bh=NexTQ+Cu1eLCqoKULlIZ0So4mMxkZ7SMOkCBm9I+Emw=;
	h=To:Subject:From:Message-Id:Date; b=It2XANpaip1ImoMTUj0t3o/xUlVNsmBxguZQ1fmVDfae8lZz+r6mSryfnL3rlZ2TK65bQt+VLWxWsQI7a5lOD1efgmpepD4QmRGB673eqYS/2FElE6W7zJ4x9qDVWXFATHRduelP/cG4523WPkv3/xkqVEJoCRzvg8wNWTTbxp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChvzTN7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChvzTN7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78D7C116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722221753;
	bh=NexTQ+Cu1eLCqoKULlIZ0So4mMxkZ7SMOkCBm9I+Emw=;
	h=To:Subject:From:Date:From;
	b=ChvzTN7kMTqWzPxYMW3kRS4+YjUZ938NpRq/xtMOCyykG88tVYzIHKvGb/m7sRMcN
	 5uYn4ASx0kaD7jLRubw7Y9XqxWYf4oFNl7OfyRxMFPytovoz+6ExOYCOhOenahsE9q
	 pecS2/hSRZH8zPj/hIP2SoS+6XXG6oCU+KdWnNYlCJM5kld2gDagC5OBA7Q57a3sHp
	 sfJFGu/w0oYGDfsgr4Rah1P57ocSF9AKxn4ysKVTChEeafA0FNO5igY7MN/fkiKyxe
	 6aLZedYUMEEnF6T5NQ8L5XL6aHUHBOhy033tiyrA2u/E1eg6Z6CGxsI4Y2mr5y2L/j
	 4BVH3ik6DZnjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6F0C3DA64
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172222175363.26525.16060845447987028909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6413dd34cdee09474318e82fc34ccf144421ba2ca342af0c5c2ef8090648030
Date: Mon, 29 Jul 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722221753
