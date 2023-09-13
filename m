Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4A114F6F
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 10:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EA4C433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 10:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694600648;
	bh=WObKghsfFILDHap+0vRZjPUNBtxj/EMwLAnNfka3QY4=;
	h=To:Subject:From:Date:From;
	b=ra1lh9V//cSVip8CRRIxracWUr5gED9BsFtZCkTLWIOHQLISxa/UvYzSZqE2EeNBW
	 hMaFw8Ee4H9fXo1vaA63L46GJ/0RJPxtxsOKh/6c3mgskFl2QEVTkU2QHWiBprydu5
	 whNZEwZ57llXlkxEtSIckUhIXdMsThX4FCJDjz2fUHn3s1CrwhDQFyDKr2H6hcBxCP
	 saSDAwmRZ1uxZKi9TLW6aZ20vx6BdJc8oLYS8IxTwPZH4WbK1YQqYyeJ3/820c/gDB
	 pqoKLaGTiqLDKPNcixW9o8j28N/BqeRountg0LNtKwcZygSRD8XRH+j7lWkb5V46bJ
	 Q3BjGUOZ07RDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95EFCA5534
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 10:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169460064868.14098.12973623718060305361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f532b01169278f2648b33dd5bd6f7db188cfdbf629a834d51780306854c075f
Date: Wed, 13 Sep 2023 10:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694600648
