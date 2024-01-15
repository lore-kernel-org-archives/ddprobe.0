Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06896522B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzsEzkOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFBEC433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705300096;
	bh=is0nLBgNn1ozGXT4R+Qnz6laUQDURT/WDh1in8ZWZ1E=;
	h=To:Subject:From:Date:From;
	b=uzsEzkOQCp8dtQ5XnbYGsziNt6qjjdhKs20rFkVr4cV6uqGYSs/EF83PLjXBRYocB
	 5W2ISG34AIezW9ZBRWLFY9xE/fJ0tiTeoTLZW7Vo8erny7Pq049DT+r8B8e8hZhxRO
	 olgwZfZPlN50ZXAUtrOEB276J+/ESZLl2oI0AqXj9FgmQ/XvY4E+Z9oiPw8s7eq8L7
	 DyASbLSoOvBpGQlZ0XuI4BnmoRgCWoqNPYzR4AA5i2UdpMEigQzMa/+qOq+aUU/3js
	 YaACe2+YRwW49AHt3jXjyo/Lc62/3Fsguwx1LXv7T1BhOMBib/Tc3jeq981DGQSERA
	 yQ7w5VNaCy/hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C1AC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170530009639.21782.16743681426798430324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2083374232a45897daf77cd59f51bb2f4452e39a465fff0d5e688e41d791d5
Date: Mon, 15 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705300096
