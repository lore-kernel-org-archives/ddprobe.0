Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5191AF0BB
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772440494; cv=none; b=Bq4gH86BBu9MsLkAXrK9gxRMRM8GGCqm1wOUA3kqVAOP4U60NxB46O/YPQrwOs161nDe58hvy45F2bOjVZUHf8I5Hb+XzjOBhaAtZhNsFyUT/qTxJUPYRZE92uJt9NbeTTG/fkBNIuUyOMcjP3l8iyQmDb1uS7kL2WWis3FSCHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772440494; c=relaxed/simple;
	bh=uF/uZe+I0MgoTwDxxRyjK6Rv2GNlyxnNNYb1vgtZ9d8=;
	h=To:Subject:From:Message-Id:Date; b=PbcPiJJxsZGmK7xJk74maL/bPGSgQdTgOYuS4SgDGsAi9Lu6fbj70HwPoMD1GWy/6jAsKKcH2g7dtoo549VAfu9OL0sznATbmTBV9ST+OxnzNKvxF2a5ztgmRTXq+zZG9UG1dLufX72fPvYByOWUQkKZmoe/naDqzlVw0oumgyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQqP3M3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQqP3M3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DB7C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772440493;
	bh=uF/uZe+I0MgoTwDxxRyjK6Rv2GNlyxnNNYb1vgtZ9d8=;
	h=To:Subject:From:Date:From;
	b=BQqP3M3Y4uOzd/A4jP3MD+/4qoNKmkZADp6AzhXlCaqsT26ouPaakzwjiurnfsFL4
	 8pUzbfQTjAtyOoat53GoA5Z/DgfztGJUya/uWm3vqevzqvuPuNGcsj8YYjqLBgpiKC
	 QusK9yZMGw3QKUUwLA5nvLzTUI+dca3VHPDkBjx2xlVSQ6PQOK5Dvz8WQeXvPwD7OO
	 w/hOvKp7z6EfY5yrTVmc2MnpIl/kREb7JuV6R10roYZUzTwb+s4n9VhDYUf6+JXc87
	 8W4OC6tw6dRkvYvFl7oJIEVxzi3IgbFjawb9suTAt/AW7DxBBTES715LZr0hX3+EMs
	 fqcf/xvbrcYqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976A4D58E7E
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244049360.8243.11648595328228060907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c534b17d8cf272c4e3db4489c652063a168705193f965ae4d98e867d258aeaa2
Date: Mon, 02 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772440493
