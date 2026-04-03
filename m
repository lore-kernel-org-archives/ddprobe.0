Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1E41EF09B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775254534; cv=none; b=j+m7zLt5GWaWgBNy1V9GDG0lHVZq69lTtj5857EuIZkxXDsH02xWpGePw8ed3AYZQifLI8QhS12pqfjzzZGnXZhCk+1UvudFqg3fI3BXqiV29hiHhGP4jduV7qSaFBe5VhLOeXMQuPTYD3aP7WsXT4zVBYG9kOCICKHkU5y66M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775254534; c=relaxed/simple;
	bh=iRDVRfjC1Pl/IhVZa6Lyqbq6KPvpnqmnLhQh2v4BMJ8=;
	h=To:Subject:From:Message-Id:Date; b=Fp/GWeB7Us/yjfkk3lZ1MjRNnKty/j+40WiWc+jyweNHTk1Lw/MNC8tlFkqBC+1Dr5li95fktPyfGP/w9R+BIpDxm/8ObK6PY17RzMqjfpLHuyOFaEbOqswYoe4rMKepjgUou1NHgAOOjUENfP0Q52lwAYgEU1KE6eJBmPtOt9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsy2Dp2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsy2Dp2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38B4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775254533;
	bh=iRDVRfjC1Pl/IhVZa6Lyqbq6KPvpnqmnLhQh2v4BMJ8=;
	h=To:Subject:From:Date:From;
	b=tsy2Dp2oyoDigoruS2F4ckmXq44SLyPUlLE7apJLKkGR9we1XLzQrQ/uPovah3Nnc
	 9tqljYLNVQ87OJjck91TO1BiH0EnG+ZjlMYrki+fBeXl02riSmiJ47Fw2Jy1/dMuxK
	 IyT1WUk1RSx6xG69XHmt8Q50Ir60j9z3rdcmuXf2F1q6gIgAoZ8cYzBVieiBjmfklg
	 6gLxwtXqvT1JCD03C7q0YMELMfTHz86zusD4RfJZH6TZvKgJegYOS3J0lz/ud7yjW1
	 jSormbaJN/XiZ+Qy6t8SyozYyHQsSuYDPy1Cb4szPJOGO5ufscURgvoWuIn3b1l6Mk
	 xUohmFea1ifdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0307E88D6E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525453369.17075.6598702287610279063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b1cce70345a66afb990000025f75934fa4a192abdf0badc743dec02004f7d8
Date: Fri, 03 Apr 2026 22:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775254533
