Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271843624AF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773941694; cv=none; b=RK5u3h0mw9X0zEfUEfC3N85w+AV0fXpZMJUWdP9ywWU7R+UgQR/BY/ZpZrLmIL0tcd3d4aU6/OX5Vg8f8wfGMQQizELbi8qjNNa8vcDib17HOT7p4zE+qylRZd/XuzHrw86WV/hCU67IbNEig7KppNgaR2eIAZ/HgGTlq8+rZu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773941694; c=relaxed/simple;
	bh=jtmhSz75bmc8e3Yf4dR+TgvBTUU7gtFIkhR6O/fQ9Gk=;
	h=To:Subject:From:Message-Id:Date; b=NOVWtUJEZ9m3qOqVe6k7CN+ox118II6BWt0QGK2NkRPQ13q98ZWhVX22iQ4yc4vGSDBWiY9rnGDOSVL/QzsHISHwX9XD8FcGm2Zy9zrFGaxBPZfx2NGpEaUBs6T1/LGKNL7n2WKgmphWgXWf1zhjQorCl+awnptoBEr6AIOI3rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4ZjArQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4ZjArQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C27C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773941693;
	bh=jtmhSz75bmc8e3Yf4dR+TgvBTUU7gtFIkhR6O/fQ9Gk=;
	h=To:Subject:From:Date:From;
	b=q4ZjArQHnxofmM5uv0PDrX3dq4XbjJSsRezPpJVq3AJIetrGWJq1IecKstqjzj4yF
	 xNGHaTb/U7zsk2tcIQoR/ytlVyX55IoqiD0OMuSO+3gkRQvScFjzGqIwEZBLntOOZz
	 kdxIDt2GxPrzqsXbn2RM0LmmJYphVbof2f8ndbsAXGNCVBV8v/U02ppNsdpg/Ox7CR
	 laQ2KC3/PEugzeDYRAkZ0sTgzwb3MFmev4QWH+d9fZg0vwBwulRX2bJra2/VGcian7
	 o7uBpZgwKltYdgycU9eX+YGFzvOeqAcZ8NWTPjAcKHAlyqdMjPkvBR5mqYG1Iup+Dr
	 giFgUPd5V4NEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921EF1088E5E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394169359.31077.17870463059615429242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3197d9b8dc0e5ab6ff71c15d47710bcc7493f925cf861c343999751f50204887
Date: Thu, 19 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773941693
