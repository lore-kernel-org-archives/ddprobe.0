Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B9930AAB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775451934; cv=none; b=CR5m9pLy178waMA1E3mvojUFt5NJWqtI+JxjXYvsB9Otb5/XbusLE2D9+ldGIpiZcy3SwhLQPF/hN9NDmfxpVeXDuCBE58iws4CEmhANB4BEschVLwBW1qyTrIyTqjrkwAcz4wvIkwMZr/1kFN6Z2SDOqcN8QHmUBjeGLMK2/3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775451934; c=relaxed/simple;
	bh=Jw8rtuiWkzEngvi3m1kWUkmKpntRV49fE3hrEw2jKsI=;
	h=To:Subject:From:Message-Id:Date; b=sjQA+BzIreGiC8G3XdmrXJz06Z3smMtZmchhKjaXnlVg08riG5oBYfuQp7DkWVuD9afPA/7jq93uTnqgm+n8Dq+8SUzKIt7eSpZep2j7LOQDqX40Y9rYKFMpyzuaVBkQc40l+MbP227d0M4dosE9id/vr3oZWLLNci7bve0yngA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5z3aGMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5z3aGMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B64C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775451933;
	bh=Jw8rtuiWkzEngvi3m1kWUkmKpntRV49fE3hrEw2jKsI=;
	h=To:Subject:From:Date:From;
	b=J5z3aGMmQQBzMhHGxMt5qr2dLacUyLoj7L0Y1tPMj6j/1l6yzQ5oMmXJnqtrFXmZQ
	 lsdMFc9/NqVryVRWbaRzEXBDdPHf0Xa+KYPjZggNToJ8RrkDqu5ZCMQup7KLk8D06u
	 Lg8P9jgwaFlhJuYDxn3WHpLnCTM83cygT/em95tc6LdCU20hXgH+HpMchOITTM/HGF
	 UKY5iP1SlA5Ism0KOSeraCopeUZM3rHKfOIQMBzo+eCqja3Yns35MmERuEEJgy5ZWC
	 lYtqOOFyABM8WNeQf0oVG2+eN8+Kbi2gL7P5aaXA0PxhdaJhX9SLwymEv+X/7sfFRB
	 C0ZYEOGXuFLjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F4CE9D834
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545193371.2984.14199570374656470946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758a1b8b58a41a6270a6e26bd8844783cc7609d97da0419ea3831104e8947e51
Date: Mon, 06 Apr 2026 05:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775451933
