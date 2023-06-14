Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66330160
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 00:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E56E0C433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 00:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686701828;
	bh=NrWCYQVTINvz5tyAZNyOnbVSDcl58zqOesmTWPVE+hw=;
	h=To:Subject:From:Date:From;
	b=vEyxMB5XOzNM2uA7z/wKbKRFnmybrVYLuqAYWfIWRWxzyzre9ebKIpGQCiY0UxN0e
	 p0/0Sv4dGRUEAi5Tn5o5VFfRUyHUNvNLnZd5/+9nursgb4G32vaPwwAQCPqRPwbYnt
	 pYbHuGSxQ1nW9vSkO8yDo2j/Wh7ZZ/2as7Tlpj16g0UWRUN0Rv/KU3IZ3ddLE8FoX1
	 eBWWezXpmHOSB6PP1qp1oUwKqv2WGD6y6DC8mzW8TKCAisG3KxZOtjhhRMa0dYDIeZ
	 Oq89T62bO6la9rJ6EYN3nkwDJaPa0k6Z/ZfBrSD9riokEmeNigr1/t2yqEXSh0U/pz
	 /cGVhrOpzfOVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5360EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 00:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168670182879.14935.7660005250515597855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d63ff6c2564148a77c8c7117487582f0e00c87470a0796c2b03157309d15ea
Date: Wed, 14 Jun 2023 00:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686701828
