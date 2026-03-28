Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103C332ED29
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774719894; cv=none; b=Nr6T2+v6NKaNQSGBY0BkLxLFg1dK48lgBaGeCh9t8r+J5zU0yFzZ0+28vxATgVyIs959+s1M1KtTj4lSsyM0jyCo0vKX3soARW7eDgIKrJXkKwidKPbXQqO1uVFr+LZdYvp7Uwhb9u+mE6aqOM3pk7HOoVZ+mEHqDfycwWoR8Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774719894; c=relaxed/simple;
	bh=BY2jmBDk7jd6LzE9mMo6ZMDnyv8LqouUaSV1EQYwZFg=;
	h=To:Subject:From:Message-Id:Date; b=nVRmAUNGr/0MkM8xaIBewrqoJGqw2lv9AAxTUQFO2ywD7v1RCc3wuXQH8iM+8Ai3D/RQH1oSxuFO1MbMVj3h5/bfYTURzZKPZMMiKa18Iz+DJtlWb3iGNAO00BTrZ05IjoedeInY2sVpXEK2LFd+bkPgQQv8ilt4FIYYSeZxPAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEQAjAA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEQAjAA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33F4C2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774719893;
	bh=BY2jmBDk7jd6LzE9mMo6ZMDnyv8LqouUaSV1EQYwZFg=;
	h=To:Subject:From:Date:From;
	b=pEQAjAA2Ny4anekb4dtn2QiHOnvtHIdwJBW9vsflQvGCbW2cclZg9Lnah/WdBDofY
	 OjUnJjhqUb1fcsem17pmGcepeKWuewHT7JzpatE1ACHtMl5Y3rUZIGlLC9zifO6SuO
	 3PlwjQFlkUKd6vmuPTw/v7ZHkd7xa7ojlxW5VKjaSMDLxHFQT+Z1nGma0yhxKuBE+k
	 Szl8K6iC6OkMBtM4M4r320ljDDPTx75wpSkIwzHRcDmoWqajg+IqRXZwW0gyZJlpm7
	 2HWF/V8ERbqzLDuAfW/CT3bbM4rLEc0uZu2LXaHcZ1KxFlRNst+av+b8NkESN+p7V/
	 hQqOe4so6Ljxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9109610F3DF1
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471989358.1840.3421753816434427480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7de998889f4248037fd6d42b8a8987b9e119ece9476070d47fcc700fe620021
Date: Sat, 28 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774719893
