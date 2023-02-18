Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5679C2117
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 14:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40D3C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 14:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676729165;
	bh=jL6gDZm9oHK5SsF5fTlnD8PHFChhT2j4cuhedfX4lv4=;
	h=To:Subject:From:Date:From;
	b=dHR5WpvLsIKSzrsig2H0TaN3ZkI2rwQdQf1P29iOk+d+PU7aTcU6P8NmpSKH5ZAbd
	 Uu5vVBu5utF+A+D6TSFnJ0W6j2eB+KNj1YBdOTmw1LvW+wRTI1FVF/hmOM1krvGiVS
	 tbCl9FvZIjbZtVQvGJOzTjybHsBU+Sb1BCbMVuQcGEyfmt7z1mjUrg520Yj/Gs1yf/
	 0m5Mrb+bLY2xBMIbP1r90h1kmZNqEStyidLzGQHehBwIO5fs3yvUeCodAtmx9Ap/Sm
	 7xM7ZLeFxeI+WHJAxttVP/RTwbqoAHs0V3Trs41+XxPIKr0HCXX5RFI6qqwERwB/Re
	 hzVmLGMhQWN2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69B7C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 14:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167672916578.3369.9769545976283100719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0756d54df80e83d7c9aa396adc021d9e473be68a7ec6790a6e7a61aeb6ba35
Date: Sat, 18 Feb 2023 14:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676729165
