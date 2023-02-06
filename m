Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F53123A0
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 06:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD36EC433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 06:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675666565;
	bh=R7c8/wMRm2lQT2Z6HdPbuDBKllVe1dgmmaWFk3UlllQ=;
	h=To:Subject:From:Date:From;
	b=t8bY59MOT8ozCUYwb14eZHqr+T028G6ZAkMbN7nD2Oh6fBr75I4Y82Fffwmpis6Xi
	 VfmpvySzfbbK/+ppj+vktDu6pBQkN2BY8/akS+r8G625NlPWpDCLvO6VaKX0tMNyGZ
	 4JOY5uEsSM4V0/NqO1g5V/Vmc5jO3vzsEzBvd24b3wsfgyuKWCrXNkmLJ5lrii2yGg
	 VK1qyoy4b/6sJ+TPKuMVPa2gOAats+jNY49nVjAx/+f2u8ONsJ3lXSIQiz1ebOguoW
	 fFUZaI3m2jmxzitUCamCoZ+OugF3u5nQVIT/Tqiew1V5HUBZNaWmhucHpEgm8+SS6d
	 A+WtH5cbLAf+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5720C05027
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 06:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167566656573.24520.6947918835419888295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6546938c150fdae88751b932f8dbf960797d999e15c41202e60f7cc30a5b09
Date: Mon, 06 Feb 2023 06:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675666565
