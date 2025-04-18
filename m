Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC3D1ADC8D
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745012994; cv=none; b=EoHyL/1H2Q7GRF+F8hT95Nt69BeetSM8jOQC5Mdy9QfHWyaUvwfYzU9SPK1/HCPHKMqE1V/uT2dzgexpw1RVc2Npr+15pS2MgdO0aTkRQt9ZZgmG1TOaRfFuBuv4NqzsVy2mSEKnGiBU1/TOW7y9c7Uxli+n0TPppOAF+C28sIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745012994; c=relaxed/simple;
	bh=+eCDYHyfNke1qd15s2H5E6c5ISQTBBFVZvPKW0tpL00=;
	h=To:Subject:From:Message-Id:Date; b=X/ptIwtWyZPUDobzkBADKg5baAw88hU65WgX9AuYfy0HoMVdP/Rx/IUOK0gIvB8KdrjcLyS8/04fdNU/aptb652G2IxAHeFzSZQwDjHzqYD0Gf10zLwVSDa1jU+r+rj9jP04zIYSUt09RmY6yOp6FnZoZX6O5uovZoLavC8D8Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8gx1vKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8gx1vKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD34C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745012993;
	bh=+eCDYHyfNke1qd15s2H5E6c5ISQTBBFVZvPKW0tpL00=;
	h=To:Subject:From:Date:From;
	b=W8gx1vKZCHDFgb2zmHN7tlHnuquqpwQfH64AG0H2wiRw4ud2by4bm4mJqOIpHaZ7X
	 QIyQc9Q37b/Pc9mLzfHfg/92a+E65CYiO1A8jZK8TQKqONxI3N1cxnB57pio8dR+nf
	 mfA/qcoVoZ1yn+KspBzG7KGc7v9INj83ecstosXBzuUnB3/EVtBR/QveXxP4U4KqtG
	 bcQ/prnlljrwHlrTg3s7rfocfmiD1sbOjRlMvdyDWryXnOFO4l9d7EYQJ0M9n0t19O
	 6NnLclHpOp7HRwZyQIUtEqgpuv/j0wyayFWXO5yQQQ86KGw11wLtZ/04lsKLMcMQvL
	 Np0BKw3aM5NCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985F3C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501299359.5659.18235891963894025698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851a10dcc7cd6bddf7d410f6293d83d92e152be9bd7068f13547ee845ae20353
Date: Fri, 18 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745012993
