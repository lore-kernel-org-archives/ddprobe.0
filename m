Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A4F239567
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774314894; cv=none; b=ERkntVnig8bXoDZsro/pPXiAAgUVabp6g/GVa5RFu7XrLcQyWkMTMAmWYXC0bytL5d5uE/O0suZ0xKwSHnvd7wr9dGTAO9FGw4iS5Xs0NlCprrBp5BNofww7P+PAalrK39r4Z2jjyJLp5JKit5JjjlWv6mRrTbE16U0JZzocg7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774314894; c=relaxed/simple;
	bh=uQR0dCPfMuZ80di2rdxxpSQkmWulVRUcuL5559jtBFA=;
	h=To:Subject:From:Message-Id:Date; b=QA6yaFzrSRYcJHU9qkS9kJtl0BMHIseSftGQHU9GOQBCgPScJF8LMPXWVxoNHpA2J4kZ/EmDYX37tMOY0McCDvi5mppqunfxgK1255cf5VAxiQKl/DqskzWM68NWF+i3q/kzNTmIqcpe8bzqh8l6XEYUCJAxU8o473pIYwqCTH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQ3cFLU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQ3cFLU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C80C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774314893;
	bh=uQR0dCPfMuZ80di2rdxxpSQkmWulVRUcuL5559jtBFA=;
	h=To:Subject:From:Date:From;
	b=jQ3cFLU5nEmbFQGRkIgjhFrzLnTIQETYqKPo3SzOWU2S1sIUIMmnDUleF1BTBl9Vw
	 99+MMVLX4z0fFolIQ672ANY0m3WGZsQOiByOuAcGz7OPFuGjwb45NE0zFYJZjDwwYi
	 Nx5Z/oYJ+PQ6lV3budVP0k9JDFtFkMqnwrwaS6qWN7y0G4MBiXcFCampSh3U9MPxD+
	 EuCRYZT9kNDNf4lGLTZwqbHPuPGgJzr5UG1iemsRl1uLa7qTqQkZn98eKeZXXciUR7
	 omMTPVjefw3bK/HtV7IPyNskcH+5www3xnlXMNZYpu0EyCYSB+7gkbV0K5Ce48ZyGJ
	 xp1LTr/9sYWqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91747F532C3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431489358.2164.14198002458277874479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66dccb611f25dde2b3b8f57413c82b99e70c83f065e7d8ea5f146dd6a73357ea
Date: Tue, 24 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774314893
