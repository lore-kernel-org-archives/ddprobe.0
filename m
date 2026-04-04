Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE761B652E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775262934; cv=none; b=sq4XlZgosoeFXiz+zUDdjqAXouBQ4D2EiyGgvtOJqSJrAvo9suIhsM1NZE/mqIC0nVLb4CfDLAUzHce/IQTVGJIB3j8KuHlHa51MJMgxLoK9G5qLAlCsMWKi/zT8HF7cYDsBkFtRDx8McJX3EnW3GfJwqPJ7+e86qzT7h+jCvLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775262934; c=relaxed/simple;
	bh=H8Hl5zykgYaduy8Mqa+rl+SrdrDlitZnEM8ECnKw1as=;
	h=To:Subject:From:Message-Id:Date; b=NA0oAo3hNsviMwRqtcQMUP6joBATGNxeaPUxVxHTBPXlVmauWn5mCebhqmAC/vvtsZiybt3FHLwP4Pj5CJRksp+GD1993rvv0sMCbIMeYpIr2+eB1jNXX1EcYcSOGH7+q6/wM9fw9WkgYMqIR2GUd0WD+fR3lgWPNveoPXuBU6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6lzjL0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6lzjL0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA44C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775262933;
	bh=H8Hl5zykgYaduy8Mqa+rl+SrdrDlitZnEM8ECnKw1as=;
	h=To:Subject:From:Date:From;
	b=p6lzjL0bcin6nvcvrPvWBHWYba8G982eqnEpm8Avt7/TJ85nQCYY0bHCbiSAQkw8m
	 ug1s8nSsorfmqmKRbaVGbK02tBtENNYRTjyXlRtOTOK+6Khmuvv51vR/JQj8QoNkVj
	 LOEyX7G8jFezYoCwBgIxNOHhUu1d21S7TYqI5hcJyI1u9ocobnF1A1QgPsDemc8jMm
	 LuzedWMGs9ySJwClPi9mY1v3jBJVYFtWx3Z6v6gmW5eb4asCDRubya7d2qEDTe6kkj
	 ybDfKUgKuOfrnJL6RvLjJztMQoVelCNjsarYEJbBn/eKOUyYwfS2aRmrFXMypAedU/
	 9rbjRFyVd7h6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B148FE88D72
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526293369.7752.16471237405528398021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d42f456a4b77cdd47aa87c34a99e38f64fcbc47b7dd8f97e850dd9bd860ab51
Date: Sat, 04 Apr 2026 00:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775262933
