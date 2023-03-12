Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3665C5C8B
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 19:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE112C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 19:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678651025;
	bh=aKGgxs4PP194Ch32vAZZm1RslQ8/8uoUxgfy7lskvrY=;
	h=To:Subject:From:Date:From;
	b=nj1VFD2Xcg0gy+KNM6MzP5IiQoGGLERnCs0kWSmxNKtjyki76Eex5rjleRQZGvOBV
	 j5K9++pLmu10MZTBsREIg3OIl7eY6Gl2bs0G9NHwrCdIcKR3u/+2yfPjErJ4kXeywD
	 JH2GmWg9h6xLGtYepG7jENpeLg5eIL+iJmKPs5ExLpkxGxxaskXjvwU4CjG/PizEfl
	 7Va4XTLXb0aPveUkfKGxL5Mi6NY8pFYPNJ8uXNKLbFOFtoIk60e2Jpi+EwU3BXLb7a
	 GRMKUewzkZWAZHabQzdpD/zI9hWjOFoCIkTsVMegCrtZalTZnsvHyORR+nmlty68om
	 6OEHhgubOkMMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14A1C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 19:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167865102577.29770.17992395210356204447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648152c69abbb735edfdfa155170db4e2244c2fd1af34fda28c396ffe28cec16
Date: Sun, 12 Mar 2023 19:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678651025
