Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA5881AA8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770513834; cv=none; b=qJtXHhSwYcXrvnArqPQWm+SsroxsUNksVGJg4pU7udI1g0mFM+3ELoUbLIfPgNhEFRM9vFvvcYMTFyt2xwVnXLvI2EbV1wyQJ7pgrv0K7jX533A8DJAZ1YLxuJ8nKWn/6YZu/QLFhXtl1H0alrn5AYLBQG0nsvyWLBJSW6HWPDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770513834; c=relaxed/simple;
	bh=qoiUqJpn1g8IcHz3q+mj9qvnsf3Ld8NuVVpT/al3Y1Y=;
	h=To:Subject:From:Message-Id:Date; b=UMnebhWrZtyX1iqvrEIhm3FE6F2xqlIjwnzkvzGBSzXzK14rX+4j4G7ZIKshJqg7zKA36/FC7gnLBXlJ31XyZ8AW5c82p3OXNmQuWnY1GK5BMEohRcK+s6sZUQB+OX7p5s0rCBJKYke7ZFMNe0+dSKA8zpcH3yGZaE7okasz3ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+cjUlP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+cjUlP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA45AC116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770513833;
	bh=qoiUqJpn1g8IcHz3q+mj9qvnsf3Ld8NuVVpT/al3Y1Y=;
	h=To:Subject:From:Date:From;
	b=c+cjUlP/zUTN+H68SWVhHm+iTAonm1fUef/xEiM6c5FEQXWi7Tq8M4rzUHPZN/UZC
	 wY8gAMigjv/wxtb97sbELH+kARM4yKY3SR/y+RYxLufy52E7bEgl8hB1cjWt9p7OkU
	 c3F86vIZ6THdmCd//L62HkcFUWf1P4Wk02NyvSCpaUp2d9j2z02o0K2ZemK6/04cJM
	 4RdRpoBI533S2qVpj1x8Ef2lIQygJD/JuTHdqaIM9JrXUhDM3JgYzclYOJ6MGzXDiR
	 0XJXnkdzsemPdaIMeccxh5Lo1hdsBKh3/qbMZcj6+GNYB7jx+xlfce9zfC+7S+3QFf
	 9kBCWVv9DdgqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E108EB28F7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051383362.5218.16547779940954863974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18a1c92f904c1540217045f405a2936c5084e535083be129c7fe4c63996f353
Date: Sun, 08 Feb 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770513833
