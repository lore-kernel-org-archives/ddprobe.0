Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87A22F22
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 791C5C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665262853;
	bh=9JzF4rmooEzEiHfxKYPjviaCXhFfKGXiRJH8Pv1AgUo=;
	h=To:Subject:From:Date:From;
	b=UGCxt/nEW+T0iJyxmjHYH99rPGkdle5M1ByNf+biT33souCtO+peNxcfMWO5uWvV4
	 MYH4EiCS0GhBDmKLZRh3TRLpOWqCWmCpgX1qgDWZQUGkFO109AG5dp0+xuM/KppLGv
	 IZ32LXqrNEWFYQ48FlQEOMGqTrWRbwcfA06D2w8sZW0nNJxxjUfW+5BO4I80cPCL5d
	 9cUTrecyJSfgaxPGmY1JnsuBkZMOYc4oQ0cMdYuPD9H5zFtDcxmb4iRKbnU9maH9Vr
	 AXhgphbGNel+pNeKBMNU18VdFT+itA5KlqOpzjhiUldTfkYtsQPd1h8ArXiMiL0bft
	 niL8CvfE0KMjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57DB2C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166526285333.1584.7024724720919341145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06321149495ce9658d2cf45e4a479e1b3c2c4c038285fa74f133c4dd66df8e11
Date: Sat, 08 Oct 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665262853
