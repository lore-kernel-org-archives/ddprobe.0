Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F6817D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66F5CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664018453;
	bh=OuBwWuDj5HzTE2ITvtJKg6HQlfCy7uzxNhgwGcyZv9E=;
	h=To:Subject:From:Date:From;
	b=ZDjZlIyROrb3vLQQYxq9jHV0ltC4rr4NzJfUIaeVaBY3AmgrSnZQxdGzyoeKEDtaq
	 6btQEkJJXz6nXXqWQlZbvfQAJYTJogvy77d9zsxWAAHQH1FzMWZeG4ZaL3+3gn5FCK
	 e8T44GGgF+NKkWXecAy3iCj+5QIsoonW+GJkc2IMBUQE6Zigq+JKYRRKo/qV0zzqFg
	 ueVBWNC0c5uEJLU0A4T7HRsR4QgW49DlB8oIRTQ4Tg5tFa3ldgIhkc88WKeDrYlaO+
	 hrHUDdauy8VlalDVnFIe3elMzmthGUI6k846M2ufWKUcjzTdoHr500RWcByAadUIe5
	 fjiQXGbrWV9ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DE9FC32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166401845331.15434.4385152935052401685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed86fa44c6635e09b05b45cf1b9e00c82520707107d00fc791dd5456bd7309b
Date: Sat, 24 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664018453
