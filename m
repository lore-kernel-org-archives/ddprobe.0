Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF05185D
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF02C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665377453;
	bh=ZG2jMd2DIug5vmHDoaWMYu6CRcelZoOA6xHHGsJhYIE=;
	h=To:Subject:From:Date:From;
	b=lEIvHxLQhUjioyuwF5LF5GJW/Z3yhR/FhlWzOa86aDWN4OufeSJLVU53nPkgvW8Np
	 9+27bVGOfgL6/FIhvfxtuSGHkSTxttscAWT0jcB4NCP/LmURah4lKEyDN6f7Z4AS/T
	 b8B9OZrVDyAvW5m4AHixAQYSxBLIVCAI1L34xMdyWAXfDt9Isw7xuhWu0DF/YotwnF
	 5ABdMpbYtUaKOzo8007rdeQZSrkb2VdoGnCn8IcSOVWMy3FWsNWzBf+Itz9YG5G1ZN
	 iSPp8IOPy1+YEeIGtliEb6X9fiR15ju/ag3KGBIC1pYWJuRkvM23qL7Ab0H8bFNyYu
	 ws5wg44k0+YrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F93C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166537745331.6726.8785754555178333636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5a1ded329c4c6396368407041f18a32bae06ef1f0564bc4bf0bd0538f421ea
Date: Mon, 10 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665377453
