Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F10645FFC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791844834; cv=none; b=pWjPS5Ail7mye9EJ0NOgwQNlF0AZ3F1rxzN0Qubm2NQw9/GIMH9kQb70JA8MvrH/stdQ/Oza8HbakHk2NqAPIfMR7FKHjPDzIRy/BcM63yZ6V/0KEbifYljyQUL2X/OOD7Ti/EaApFM6hytcbjUZx15t8cs7Llh9DYVXEeC86io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791844834; c=relaxed/simple;
	bh=ibi/mF1yDLK1/9zFjF850X6omWnecxVNcj0rbmROaeE=;
	h=To:Subject:From:Message-Id:Date; b=aKPHGwdwP/+5PZe6J/c/kRwdvEOL+bGMUV5PCivUfo/j2k6ZSz1dx+BN5EGCONAYL2uCLGdVUZCYoyvQ1h+yvAmabhtY51nSzOj+OqD7+r2GJJsKP8i058fBlMe4u4KUtRLMB/ZqQhs57+TcNB4te9zu3U7xKi85ifB1q3wfIg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WysZ1FTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WysZ1FTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAF50C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791844834;
	bh=ibi/mF1yDLK1/9zFjF850X6omWnecxVNcj0rbmROaeE=;
	h=To:Subject:From:Date:From;
	b=WysZ1FTiF+pQ4dYOA/mpW3e0x/arIcc2Ph12ll0MGf+tOWI0frk1bJCw0cQaoBDn6
	 UyGAwXiXfsl/Hsjq9yY+hCkBaMKdvUPlLrmAbChuSAoGyxsuDoRyeAHMIYz+z+0GI8
	 6uhulnkmMZiLNCwrMyptPvZUAfbZJ87LKz5whzewF2EPK4mKgV9HCRl0uuNxJi7r3q
	 5U9JHtyultapCTl6kMXGv6k3lC9NMheKlVOnsUnQnuAovjLZ5VNp6DHUxCjHy09LNU
	 ER0qB9VsO61ZFwBTcjA3UWLg/N123h0xdQ/uCVgDwDptfWLY/jqoG0Z+g6CXNprtOh
	 l/UJh/MopDDbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D0BCA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184483370.26405.4969487254057320763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78638972baca069ca708f92dee533de436320982503a66494de31c832a56ef51
Date: Mon, 12 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791844833
