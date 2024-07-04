Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB5123BB
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720058723; cv=none; b=eIHa3z1e0i7GwtZyaJTnyzQ8+CKiGBRU4CjWbJmX5geh3KwL1FCCBeMHO9ZZfvB2Jorz/+nhDroCyb5FTw/6QXCF3b7oBWmqvlOtQ5YrhDlzoJy7k9JpMqunYMWgkasnjhjbrvUohg+VBEL4xw70concXpC+xCuVghHe3aw7SEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720058723; c=relaxed/simple;
	bh=X/IbdYkLS7egbFPel3tryP3CbqNzz/CzERJ+FyDLJ6w=;
	h=To:Subject:From:Message-Id:Date; b=aIeulkABMJqW38rTdFgPGNF1WKZozpmE19J+ZmnbTt6ve/90Naz5U5oBXuFAubS7yk2t7oY5ZjQziK3o1l7j4jiF3sMjJx0Nq1wUM1ZauY7lkSq6tZO9GFfuwPwtT3FyT8jKKOsWc+RHFlcno6FEE6uOop782ffan+RQGyDGz2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHnEy9zJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHnEy9zJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30B7C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720058722;
	bh=X/IbdYkLS7egbFPel3tryP3CbqNzz/CzERJ+FyDLJ6w=;
	h=To:Subject:From:Date:From;
	b=OHnEy9zJqQ1OQwWoP8f0PLRAIUYapKR4swS8jshUHjZ4V1IZgTAvus/a0JE5ucCaU
	 hoVW7SUGS91Vr3atvZKGcw9JzHOjsD1/NO1BKINdIWnROyRhS8YnuR9KA+wkh3oH1n
	 TtbNPT/AbBnUDzjBe0MnFXwYeeXh26eqW5k/8OKNO9hf8/Lyhf4QDwMIT9FH7hULDZ
	 ZJoXpYnwkAXYKG3UpcuflJKKoeQhK4VkR07OmLc0ry6Cgx9Z0I9+46+eE8i3W7KvJN
	 1ZrXn2q+SgEBlquQdJe5GRnFNRS8gYfyGRrexgygHK56Kt4Scc/3SJfwmR7cwliPu2
	 Nu+JqjsNEAUWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1A8C2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005872277.24321.12414382308762774616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc800d5784b9d189e968a6df0361ea138e2175f8876df2dd1162524747652188
Date: Thu, 04 Jul 2024 02:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720058722
