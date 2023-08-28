Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C12146AB
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 14:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD98C433C9
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 14:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693233848;
	bh=FunSzZI7l56ZpCBqRzXlcWgrV7YKIGFDdRS/FXj40Hk=;
	h=To:Subject:From:Date:From;
	b=dDpNo6nA+eF/R7AhkTgzToK0Xfz7MY+PpA7WOBj1+qXagpwmlAU9MVPa8lDVNBDRF
	 EYZbphAFT6hTZ5UmL3d5MyNTDba0V92FtYyjvQi6IthO/8ZD3EdyM0NmDoNNREttMe
	 xzLIPI3veLvJW5/9bXRwj9sfzrCd0HNOtoGNKslV4yD+htx0ZR7T47xOVBvb9mDVc8
	 xE6AkZC309i87wmbzP9gmgN+CAZ94YZE7jrPvB23ykL1S5Mu+KHpR1AC1OKg/wYBC8
	 AMaR6pWE2mlMAYG8j1H4XBGznDWIRkFD4wrZQJRs+xj/RctXK7QAG/pWsM0zmRvgAi
	 ZyO5LU1J7JLjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF141C83F12
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 14:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169323384869.15115.16736364038804447758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3b14eb209c815de714b81757c0e3c29d92590b32df0e13258f457bc9bca764
Date: Mon, 28 Aug 2023 14:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693233848
