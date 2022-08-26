Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C590A1851
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA46C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661497852;
	bh=wkMdFRVxVjxwe2CeZDxreurL+IxCZmoaNik8jaBqsc0=;
	h=To:Subject:From:Date:From;
	b=mzvtEy5yR5EmBjbQV+MKJmzoUtH9/5sYm3WqYJx5r1/hMJNIHTbai4g2fTmNKJLbq
	 xPrr6R0SY523zOr8w6HzdlvEMGm4lublGO7AJ2vvf5MeVv2O+urIYhA0iT6GhLYoMF
	 XLhi4V+uCqNWXGEEPKBTh/sjY5+ct+i0KHd6jkNj2cyRf1DENv11MpdRP20qR7i1HI
	 vucOefFiiUOj48qP8YYrDJQgeIcJh27iWi1SV+/f8pL165aqdQ+VY0wwWRF8e81U6y
	 nIs1C4ov/xYN/ievqk1+QLhbThsFd4qlxyFdYXJ33yAvjiWmT5p6iTmirciQ/MB6a0
	 iW0NBwC9y9h6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F4EAECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166149785238.32211.11546910609582870534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7963339a7d6ec8b4c4a2562e18807a52480a86c70ca384a08d0f5102d616618
Date: Fri, 26 Aug 2022 07:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661497852
