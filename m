Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7EF92F52
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ABDFC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665864053;
	bh=9QAGSLZP9QOc1Vz+1bw+QOiesZsUHgbMhjnv0khCzB0=;
	h=To:Subject:From:Date:From;
	b=XGZW+j17k7VLypglwpEiyBw0vZqzB9EZCsvJEchNo0/9DtYa8cM9gqeRaP2E+VXpH
	 yTZoGFhHorA7yuZHLJ0PobgTNGZSdhwM5zPSULqEZ+i1EnUhp9xo62exldfvCN2+NS
	 gMbXPt5XJIVZUwVVBHlEBaR7wFQaAfx35Y5kYsbWlUXB5YvjRS49i/Eo5koeaEFeDj
	 YK0eb8kSJtwxy7mKT7rhpSEZsePhMKegGNTEq4Ik1fB6LDl5MFMIa/mAU0b8v+9uiL
	 XjRnyaJvIqPRgKchVmGsy28s8tvvmayYFMNY6A+kesi88Fd3VSL1Ek1p7mxVMk2gNh
	 jxqYPW5rtKJIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B805C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166586405335.4776.17574252866278044720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59fc706a725b527303d0ccd8c53be267df6243302cd1cdb92897a94156d25e49
Date: Sat, 15 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665864053
