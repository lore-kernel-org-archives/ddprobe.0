Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4D3469D
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752262794; cv=none; b=OaYAoQOGUh2UoUy8j2CqcrEpo9w/7YpsNOhsR27Vyv3As03MZaZ2qAFc07BV3hYkk8C1Urb9Yh0SVI/iqfbjqWSi302vkU3dDjw+3HL0kwhm6HvDAsOPygcRBlBZL8ELNqajOiw7/9+y8uL7H7J59w4NkWqVse9GxBghs9NsWow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752262794; c=relaxed/simple;
	bh=QQzwXMjinO2iLbOLZU38c/OLG9JUBYmHhA1tAZ1PvX8=;
	h=To:Subject:From:Message-Id:Date; b=LaSSeW6inXDlYQHqPDpY5dpR/BD57OkqZBkEmC84K+iz61T1F/MAkcuFUcAZ/OvkVT3/YSmMaeVJzUB1st8vud01oEOCEIueiFEKYqHO2FJM2z36iLWTUb1KaybplPC9K9yNzwLxmwOvGD5NVvld/JdUp6v7OI6+3LbL64fxgKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnFIwewY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnFIwewY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00C0C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752262793;
	bh=QQzwXMjinO2iLbOLZU38c/OLG9JUBYmHhA1tAZ1PvX8=;
	h=To:Subject:From:Date:From;
	b=gnFIwewY4+AxtMU/2aF16LGw1w0Ck58RPjlo/AcgaSZp7ZqzNRGkCeLjEy8SRfLcW
	 xg7PGdCG8SkybXh6NK/arNs+HFVd+IbQTd9zqyhkjIy85UG+PQu0+XX33kebpBsFY0
	 vzUNH01DdP2fUwI5B4j/5CCPqoLc5TIS2r4ksBILjqGP/dQjj8delUxAkbYsqOWepJ
	 7zHXCL2/Sgpc6CXt78JI+jkzM7anOZXUYuaERhzZYZn5fmJLkUO/n4qHLXGvj+QBoY
	 9Ox3iish9LYjnEj6FncqAh/PGoEowf2PhSjbVweho5oQpLfZGpITSXyQScRwgdHG4L
	 w7zf99l2l4Vyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FFC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226279357.28763.100961751955618119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5840473ca557b95c9ee02677aa57a121618d175dce3c60afe259a2f7f3df5290
Date: Fri, 11 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752262793
