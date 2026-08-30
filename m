Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A043BB9FD
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788102034; cv=none; b=i3p9PsO6ZaYBGhEURwZszu0SgP8FJSU+niI4Ed/+kCCF+Bl5MIXpdySBwgAwHTvblu6M3Z954uNcXGLk2jI8MFEfOpDkw+p5d1oeMqZe/aF3N/eB5zjVFLkyyRXnJB3qNSxWbPrbB7UdvgRyQvlk1y1dI5t4ou5ss+hPyJ5AN8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788102034; c=relaxed/simple;
	bh=ONnqJAPqAb62G8uVRZs5UT3rNzAIazMt6VXx6c1Mq3U=;
	h=To:Subject:From:Message-Id:Date; b=taVqiYrv3skrRrZu+gy6Gs5ay8W8g4F2RsiPeVhl7jHKV3yLMgvaWKre7W3I36XPZvzM4wukQStpm/42ok+Z6b/sYuZVeSaN+e9RqC9rmV8cF08RsFOuGtiiJxrRvtFB6QWj8urmXGrTq1Lu/0nWSTfBbhpSzaOSmDe2WO2Vnbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVUqnYVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVUqnYVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C96C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788102033;
	bh=ONnqJAPqAb62G8uVRZs5UT3rNzAIazMt6VXx6c1Mq3U=;
	h=To:Subject:From:Date:From;
	b=JVUqnYVKSBNjwIWKKNNitm+RG+1acAdzxHXGe3QkRFdz85uKstdnyja1CkBC5tSq8
	 l13baY76wDAtwQjjbX9/jY1qYlRrffITffzyFusRWQpWQaZb22hy1+uwoeK4+Fw9Sc
	 MLLttWmFw3YnlnOY969azOJ3XC4+8R6+ZXx+WcMHq0R8wNmKWGaoetde4CFK2ySlLZ
	 Nwp055q3aUX3hqznQykB1pqmUlaUbeKHU4HquV+X/MhHbTqYMXAuOOKuN7SVXnqo1l
	 KEEi6gbQy61ydy1On/Y1pPc0zbtG2A3HJCLoGlhMz5QKbzd+AoZ1dEZuepfNM/+Gon
	 h7e7gF4OodlqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB4DC61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810203370.21329.492380419185996425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 748e58c263c3c64205c39f51c25829b30cbb07a803a37b72c69326915a53af4a
Date: Sun, 30 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788102033
