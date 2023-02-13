Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D90C1C26
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 06:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F65C433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 06:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676268245;
	bh=ilFM37UIN8//g3iRmn8JGdOnIMLgX1t+5APLnv4DWow=;
	h=To:Subject:From:Date:From;
	b=XwqsmMetizH3FkpXYC6ELlimoao4lpfO/UQoLokxCsgMZYxzPCASNTlnhLF0yOvY2
	 uocFIigQW+CcZOaSAYuqGIynrOBNkGs7zE2c4J0TTaD1FWg36lxAMeqXIWbyTMoql4
	 rgPZ9yGB5BqmcexxEWE514kpDixm0auuhTJ6EkGdR41xg5GBVTqAFi+pA/C5mUhGkj
	 9q3arqSYNH4kIW2M8D1nQ1MK6Lfvj1yjSQbiMCkn0U03UPS5rQwum6dbfcmg50tIZp
	 R78eHdPqJb5wjtqLJd2DRf8vdE2pw/pqBDTjmWgUY1ITXr4lc1s1kfbADSRbky+hUp
	 r8lJ2KgyPVSYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3AAC636D4
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 06:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167626824575.31251.4860999813805314592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba9e85d068c26d6d07a51deb44d3a5edfdcd8a814b75b329f0fe96566e444e7
Date: Mon, 13 Feb 2023 06:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676268245
