Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323AF3563EA
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761332994; cv=none; b=L7ZVMk+C85wf1vwTGnDVs1A6GA34ERl9vFm+8T1qXKXa80SfH0gwf8Rau3DWgAFNdcRYreOXpT0QwJepWGWR8iefrdEE0wrbQRAoP0dM1Lw/MAn41NzM7fIGYXGvm6BMZzfL9SYl6M9oIsgN4Jd03u09nBBCjCddcUdlnU9ljbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761332994; c=relaxed/simple;
	bh=frFIOxn6MSJ7NnbQGCL7L3+jZP9H2RVO2zySP0Ge+MY=;
	h=To:Subject:From:Message-Id:Date; b=rXyKltbNoAHKUv0qDZXoZxMYPrXR2maR8R3Wn8il34r3cGzZ4g0r4mnCrXk7y28j8DTh+2hpodz7ZnsqtFf5w9AvOFbRmB4QDhoVFpR3fvhK6HYvHk0EJ+waazrmmmMd7YWbhpMrRhp5vE8lY3xoYdHvPZSciZlbnmtFH0kdhfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r61yWY5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r61yWY5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84ADC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761332993;
	bh=frFIOxn6MSJ7NnbQGCL7L3+jZP9H2RVO2zySP0Ge+MY=;
	h=To:Subject:From:Date:From;
	b=r61yWY5p+dXSL3GAAUadQ1YORPpv8CdyIqERHcFT945jMtXg9p31JMkZgJMQwEQ6t
	 fVGbGPPUUg7Lc1zjLthwLBKSC7RccHhUctMyI9Gv8eOIG7IiqoTuo/xFdr4xyeZWEU
	 f9vnrdiJ3cn2zCyxd/T9u3+qJzXCjSrKHndTYl+APyXjdWFwzM3tlsLCw4PdijGV9n
	 JK1zY6gvtrrZG+DxNb34aYmjNgTNi4e9BRqFr/8GRI0wJ10GJEg3oPO1ydm1V7TxhQ
	 kmQyNKv6S2GCZvckV4+ggQxYJMWgFFNW26dpA2/rGJmUlO78+/acX0WgDwFB6Iefn9
	 kUdeYJnjphngA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926DACCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133299358.7572.5797034406056749584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff591a9cb39a76e67c18dadee01c0a18ac4718e1148433154c577edcc9469720
Date: Fri, 24 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761332993
