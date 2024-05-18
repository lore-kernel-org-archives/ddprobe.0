Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771171F5FA
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716037343; cv=none; b=No3MRvwgNZA+8Pbovh5i+gN6K4hVVTVXSRgRY5dIxVPG0AwydVLK44Gmd1aTMTBnEgijS1Assjms+W6ql5De9+0ZomrM/qlwEtNTQXwC6T72Y4oXEk7Qun5bt9k2sTb8CwoisngIH+6HtLcuXuS0VJyKsBO8A8Z9h9warDC9gqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716037343; c=relaxed/simple;
	bh=y3ZWY0NvoJX0ASD4UzsL9myx8Csmf3hrMR3MdGo+HyE=;
	h=To:Subject:From:Message-Id:Date; b=Jjuxqok6omtA9uTZVkopTXX12K4egAXgv328xhn/xRKeenyE73+FSSmcKySjay2RRRcZdkd4GKaWPjxvthGSPSJArqPWQsUPjhp3XM7FBTdCU55zM9hd6fKuBqYi0ZawZYvfhz3fYD6IacWWLkQw5SZSjpWdXu1KTPpexyxN6jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQfX8AhI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQfX8AhI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF05BC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716037343;
	bh=y3ZWY0NvoJX0ASD4UzsL9myx8Csmf3hrMR3MdGo+HyE=;
	h=To:Subject:From:Date:From;
	b=jQfX8AhIkkEii1x9jlW28zofIGRzTCLjsXID+IYJ2UCG7qqK2Dzd/7ViAhZJwbyTT
	 LbiIapJmIrEdzL/sNwRplQ9FE1jTX4S9Axrp9jQSUMKUPTYZdwI4hkYk9rADDoVa/p
	 w4fQQaxqydYisAFsd4tw4vLqktlHFzRe9E1FOekOuOaPYTbB612r9s8E0MTh8r1iZ2
	 t9Q6cMzeSUsHxIC/Hb6+aW1x7HdLyUwhepW0/vbwAJJm8b5JPwsD4J2q4WaHJKYFgf
	 BTWAMhNmzD9URab710JdQnko0rF29xjjPasN4znWm840OsNsbc+4Bs1jkr1x7MXMqM
	 MRR+yTrWtvokQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D75C5C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171603734286.23995.2957121608725393465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747203569433d0972a775b90b1aea219299169ee33107ae48abb33cb3af7b68f
Date: Sat, 18 May 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716037342
