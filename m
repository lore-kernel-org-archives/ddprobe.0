Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7D78F5D
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 14:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBD6C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 14:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687530188;
	bh=aidNTIi0LgawRMl7jsSdkx7SH2bZtM4HQyfwyvIxYuA=;
	h=To:Subject:From:Date:From;
	b=YgC5gPNxfnwv+tLcOqUUFT9OygVx0xGrlAkuXchMthQnb6qMRYWtaK3yyCWpIdCIS
	 hxM32Rl+Gm8DO6mORZaOAU3t54IZxOlw8lQZTGluA6Hr0oujC+lIE246GISlDrgKu8
	 aOv9k/DlfBt9fZx8y0WgM8YUt20GOuIKk2YTN0VE2zufBgSjv62IkbJk/fuBs0dq3q
	 Ko/7dw4yBppdRz0K/IOlGUckcmMVDQ8mkGk145H13W4HD/FKNNDOuI1373o8pyVRye
	 dpd7pvhj98tpFX4+ras7iStrapP7yljzKyDbll/ZVM6NwS0jLGl368BtFK0ukr8/uf
	 2V9dKSPMSgzMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB315EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 14:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168753018868.17852.4239619107300035869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811ba05190f29a753913a151d0203b604932bbfb8cefdb1ed251ac8923d1d90b
Date: Fri, 23 Jun 2023 14:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687530188
