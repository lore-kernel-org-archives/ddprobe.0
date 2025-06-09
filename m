Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324B0224AE4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749506994; cv=none; b=m7PPjAOAwxjt2crSCSHeRIfyqwjVNWloVMPaTR5OU2cBqGCvo0a65e3sDUC0dTIukSGt2cHVVYBV8FJJP+8Q5eRQF965nkfcXlzuicQ0ZlTxePljc7lbIKdNo4kCNTfTC1+TRnH9NqB40OVqs6o8ozTWFjMwJX2fzRfHK1AzjBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749506994; c=relaxed/simple;
	bh=X15edH5ya+xtym36PzDIjHzgqD2bI6HIJmIC3ZXD/VY=;
	h=To:Subject:From:Message-Id:Date; b=bjAoOHfY+Qqv2/Gvx1oRdIQUW4CE9GBFQZ07FqKZU+BklZ0jGxQwY3XWZd7V0pbzPqkBlc/jLE8uQznxGfzMPVUPA41Ex5RIsZHze0gPczVdkOoWRy/ttvXxRMbmkfJ2kqfQ+Zse0nbp4cGx7bC9GdaJyKkQbHhoVyzkZbQbnYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/HjxZ3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/HjxZ3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6678C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749506993;
	bh=X15edH5ya+xtym36PzDIjHzgqD2bI6HIJmIC3ZXD/VY=;
	h=To:Subject:From:Date:From;
	b=N/HjxZ3Uzwi+zCn+aYgwZ278oR4mmR15C4LI5bnjRiG+D7WJK6NIkEdJwTRNc+7I5
	 f4BYDyXdRb1rFRi5pAhNX6wW2OIw7jLZjDixHA/CThEm7FmieFMw6P19/kUV0MTLWF
	 5KNSYxRLzxlm9NSYKt7gWbb+CKBg/gZJtH7Xz/0mMRq9h5qo/0dEgfRn9ka2YxUJ2y
	 1VdaYTbshMc814kPvMkrdstnxqxLyd6BTKN2cTB0QPByExG6ZCS7cjEZZqt/m04VC6
	 7TvXACsf/edq8g9eM3E6XQe0i9WBU8OGM0ZIuk5TFyirj+q/xlbk+ue0R3SDrMNDLA
	 GhiSweM9BfpDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9482DC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950699359.30293.8271129421093480007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5179d77b97b989634b103fd1835e5d7af05153622d3703bd74c3aef6c0ea46ce
Date: Mon, 09 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749506993
