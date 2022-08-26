Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89233D6D
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F22C43470
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661517652;
	bh=aQgdCpxf1fjFx+bSKWrg4xFEq45ZZ2WAQ/mimKorTGE=;
	h=To:Subject:From:Date:From;
	b=jHK1b8lRAP4/rPzzf/wQwjdCBtvitlxnGCXPXQZHD48NDjF91gyYol6udTuo9+KPS
	 FFBQ+Rp5Jc2QVeLyEv6Kp60RLNv8xLVRmyyEwuVys1svJJHtvWN60xlbQrWNlbA6lP
	 XSST3wf9yIelFahyq1JDEKM5OC72PDRtNsfLHe/ZR09fmsZxNJkcU5b7vbQp12SejG
	 Xz6+mHmnVbdHwB4K2/paH+pKTYLostDQwKkenr7z9rkvR7b4jdxKld+aNc/UjNTsDU
	 rY8CI3AId3CkZF/BCvpXuCylb/VLFS8jVYMKd1VsQIjqJTOPwmgz5W01Z0GP5Nz09e
	 pcIQ28h5hCeZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B90ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166151765233.17174.3114284485815457997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8689f8c298a8dab55783cb2420a0a6917200c34c00a260759eaca63324704526
Date: Fri, 26 Aug 2022 12:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661517652
