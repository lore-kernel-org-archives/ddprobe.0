Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DEE27E074
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765311774; cv=none; b=Zd0CdOe8FSynOrIk2ISv4LyLEgIABGhMqWFklKJTNjASNIlshLBKUAfD5htvWnbYNL1sehf+HBO8q92GI7jN3fuMActy9sKy0VTuvwFDbDEX9CiZOQ7DbHvL2JvzA77fc5LY0WcbxpeGsLTUjy+wgo+QOFY0oUKshGfaMXFY1+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765311774; c=relaxed/simple;
	bh=z889uk3Zs35Daoxx0OxcGEd7Vmg8lIEG4w+KU9VW9o0=;
	h=To:Subject:From:Message-Id:Date; b=e5Q9kZ9dZf/phiJojtCirIt8dA9wLAEZ9JuEwkyCW4aMB7BWopRBThVSkUjGBS3oU9nMwvlwMEUI/RrGmW+aqhkjiTAmXwY7dpxQsGTX0+jmpGZXI/GSXLQRBTV9imGZYEAw1OauA3g6v4CXcGcTtV0QIJKQuU8UwlIv0Bpti/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxZLzks3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxZLzks3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB97FC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765311773;
	bh=z889uk3Zs35Daoxx0OxcGEd7Vmg8lIEG4w+KU9VW9o0=;
	h=To:Subject:From:Date:From;
	b=kxZLzks3jBjv5xUJiG/vL6MqyXYpzn5gXHQJT/Zi3D+pfl/gGC1gJbxdG8AGXmtAf
	 E5+Q4vQjca3x4Y7F/Xp+4bXac0s4Cb0H/D8lKuWsEnRMQPqae39zUIQXAE52dp0zkw
	 vKP3Efd/pJdztEIwqwvSNPPsjtpWvYKpabZnX71PSolNL4ThnfuvfVy3W3Br0qqMX+
	 xiraUgJpp426mUztf0kIS4jpusO8kKMBM4kwuF8iF/niWqCpkLYPFwqkRN3wjrVdXn
	 u9luWZda38JVp2sVownlKYmIcny5nGDlhsdlVPxdaylK2y4QriD9jLUuQ/tr1+g1Zp
	 EalSu0Nj9a7YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CA8D3B7F3
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531177358.22992.7438867493584450760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dab538aa10901ce478855907a1519e09a58776ce85ac51517943cf3ca9df599
Date: Tue, 09 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765311773
