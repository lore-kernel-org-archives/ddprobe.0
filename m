Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4167942A87
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748234994; cv=none; b=jqI86M98uyjb+B5+LpO5YvEwXvdq7sGpJ0Cz3e7g58OnsOaaEFzwOHo1l4+MjJZ2/B8w9XnmAe1TPplWzqz0UDMKurTvZcCA2Q6xVtDtfHsf/QcnFIcgDPD/s6J7UnPfwNhfLwwOEbPY2HsyHmS4PjQ3FFIRDoCOQS2ip8fCvLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748234994; c=relaxed/simple;
	bh=cQk8wqvoqjoIO+8F8uR+gHu5nvjxO0gIbWzHXbF18+w=;
	h=To:Subject:From:Message-Id:Date; b=kPLE0Y+h4Xk0Fz9BptH3KO3nPhbbKADfN5NPR+nnJ0kTcIZG8ZL+eTF3mv7DrJsNBWM7sGD6nzir27ghgvwD/JJfM+mckLcPjBHbS9A4SGAlGiqpZ+8xltbmgQ0yoJTZrlVPsgvCrNxK/5uVL6Z+/RR3tYtxt0C68tVC0efioHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMH4vE6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMH4vE6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BEEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748234993;
	bh=cQk8wqvoqjoIO+8F8uR+gHu5nvjxO0gIbWzHXbF18+w=;
	h=To:Subject:From:Date:From;
	b=TMH4vE6/qJxEPbY3EV1LYc+ORktqzagtHSf5QZCAMc5IJp6eTJfAe7AOGR9875sg4
	 GLlP76+NzX0rZ8EHzPAGXlUDzE/ICOl0WRp2UcDRKavpI5L9xEO6FZVrQFAUQw0uIJ
	 T/YheANLIPKEclK7yRYkzucLe3TGhDWExLl4lP/tnEH8qF+tY2yf9Fx8R5wBgC77QM
	 P5phsdccgA61HzI5Ck2wgyLmeKhXz+decgqNsotkttbugaAIu/ZcmVupXC/Dat7nJ0
	 EvST4TUylS1PQ1HPh4TjjlC2PLIPpCDTeqUDV6vflQLaJ+mdJVOzYqB31zQeD0B4qI
	 CRtHEB1fhj4ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D5EC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823499357.23496.4463609835657426376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9afda3b654dd454eb3ee3af8ac33880edcc94e04ddc17f330caa8344fb516b4
Date: Mon, 26 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748234993
