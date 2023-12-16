Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050A714A88
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZJ3a4yM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790C0C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702723096;
	bh=M5i1LIiuPUTdXGO2Un745XaCnG6ut4dy3UwmLomU72M=;
	h=To:Subject:From:Date:From;
	b=oZJ3a4yMWlLkvnPk7kJ1QXm6pDBcib1m3RduNbFxHcyc9atTBxrZ32qn3QNXPaZ5z
	 QjE0hEW1Gu9+V6HlrukfdvLg4jNHtNddI1A4EyvVpPWZhiRA8daKIso7ZlantjpY+m
	 +a/9EMZNBslKac1F7ODkRbEN1eA29ezqML8o+z7QolG6V9oriOrUTHrItQhmJ+Yi5P
	 tDx989EBq2n9YmQJKQ3fJsHWElyT/A5uJH6Zwan2DNBO7Uiwk2jvkF2/GWvJiK/bu4
	 zfteAhluGLamu+NnnesDEWdLwo5r0hQwTnDYpl6L6QMOuoOUy0KGXrsAppxGuvfTal
	 ateprl9NYgpJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC3EC46CA2
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170272309636.21906.4470411224610107903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41326dc5bf440305cf29468a684855ce79bdfd711fe622b329dc674226c9ac73
Date: Sat, 16 Dec 2023 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702723096
