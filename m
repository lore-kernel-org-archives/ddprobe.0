Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18275217F27
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770441234; cv=none; b=t5LVz/+MrNwrz6Olo0Zy/tJQ7oLLRCZk6brJa8ytAx5hSI5oJ4/AlPPNG2tgNdkle45M3fYKenN0PIfaR0ZBVREGM99uav0bivaOJbVGKmCNIUIRkJ39S6fjzsQboiKAhWD3z6lITBjrAmCgxpqSv+YV4AISyngQd6hjc0tgS1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770441234; c=relaxed/simple;
	bh=SfKiPAu7tC591c04wO9AMsFk7KWqOSB7nYDBfGVYY5w=;
	h=To:Subject:From:Message-Id:Date; b=cpg7pjoM80RRXSDB5Sg4OQVWnguZ9imkuTFVT8jMJnMRp7ZmLcW1p/2+Upf9uFqoBtjfln/R4cZ4y9TNRXcJZmPqKW/zcOoPY4Em4vIVSaxOoP6PnOoEZm0XCpVgTy1gwGO9DaBIz25hU1+7f3Ut+HMTfRza//t9Pcl6fHN3hyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aqnw0C0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aqnw0C0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9FCC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770441233;
	bh=SfKiPAu7tC591c04wO9AMsFk7KWqOSB7nYDBfGVYY5w=;
	h=To:Subject:From:Date:From;
	b=Aqnw0C0rP/G/e5cSK8yRRDqQFUejQBLqS8hwe5urz5mB60f6GRyWPEi0Je0zZdWR3
	 bZ6Akk4GTKkAeGsnwy7mrznOb3F4m2BzymNNSy6fL9wgQPgJ6RtZ13sHZZtkNZxoCH
	 76M6z8f98+NY0WfZAZCPKxFvGYZdKBu3On9xt6i16tnuSMpdh3u7lfC62/zCiRA1/Y
	 22ErRJA6uULEGdvygYYkX7xcutVmygaHKuA/AjzGcm3mXW1DWK8SIK/ircvmpEPIDr
	 24ZTI0aQeZlX8hFlDJsoDXO9/818ljyr/Etl+KTzQu0GFk7q+fmRXTQKYShW7vKbC3
	 XyvwhrK81A/fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E4EE6B65
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044123358.3212.10791864773448310678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306f9de4503e169b8a5f43a99ade78fa999b8fe64560343818181fdc85b599ca
Date: Sat, 07 Feb 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770441233
