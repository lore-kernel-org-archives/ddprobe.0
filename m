Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D291833290A
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761695993; cv=none; b=GIpr9Mmo0UqmV121J17Cbsbp3zlfDa5t9cbihgfRdgAi22FnhMLdayFpoMHD+6d9GfYcVhIa/AcISuSDe0H2/esAJInjuX2pe8Mzk8rvZHjnzvfRjIOr/9M2UZ9HUnR6rbv2zllizQbrw4zu8OhpXCdsQMyo16fr3HHsq+gvll0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761695993; c=relaxed/simple;
	bh=oM6XVUPMnM+4QYAcRbcgBmo+id6txJH1ogjvMptVNuw=;
	h=To:Subject:From:Message-Id:Date; b=aR4DDwmdvaNLP8A4rP2k8GAP70tPNtA5LrUYC4sBUeNWXPZw/AsQItgn8TlpT6j86sfJG8vzXBWDJuvflRrKQILhI88qETKbSeeLOXDHXZs0YF3R7hkivnQPNk5mClKpcod6zfNiH1xbX2HlPa0Repd0Z9GyE54KBfOFwpCv+28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzDj4Len; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzDj4Len"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8638C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761695993;
	bh=oM6XVUPMnM+4QYAcRbcgBmo+id6txJH1ogjvMptVNuw=;
	h=To:Subject:From:Date:From;
	b=DzDj4Len1hcQnI+LCYV2XUb8pZfc1nerlogJzFs3vJiYH2VHo9iP5gcWRcWnBCRQS
	 haQcgvWYNQftEjnq5BBF4LHd+ZFROQ4M75JTH7KyxhUDgICY5YRrq44jvPTX+jnccg
	 d78nT2Ub1EAFhhMtD+xJuflp7Ek7RlwC7ZDV6Gqb1e7VRntj9KO2tVTZaiLQ6mn9eJ
	 AIJ+KBTmbn3WqvyOAnA+0Gu4t9GttaYFzGHeqzdWXoLwbZzNst135ZQJuRJZweHSg2
	 C7Kg6zc53OqKBzt+3iuXOzgxdiU3/M4TbbU/puogHeT+GHbHTHE2Y7mlnEbyn9yv6Q
	 qpgEXNkfk/81g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED5CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169599358.14511.3824291671306785552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905653fe3f19c7bdef4f6781dd97928e4f3fd5e543c43df8051529ea9bce238e
Date: Tue, 28 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761695993
