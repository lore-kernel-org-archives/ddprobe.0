Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B39620
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69512C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661910053;
	bh=Vlvcd8DnF4gVVAgF4CLBCqOF/oyrOh+SZruNDatkpog=;
	h=To:Subject:From:Date:From;
	b=MFoDIrolmYe8H/UcVSEftrbgNEPg+o07mlTdlg68GTQsaEa7UaIaSeSBUCyypR+3a
	 6xGIbSadVxPCxk8fXLTrLnPu9PdMzL6HxsVg0TuDigK0CMRS1XPOsuLzw4ikyeFSWI
	 HXcGsstzXum/FsN2LqfCYGW6aEGXSjcQFEsMl+ueHRcLK1PVS/M1+M/v4e4SpWOuzB
	 Pm5YqcemUkGFf8OVixhu7tNKHOoQ9RrPUN6kHXRJfD5us1A95tlBivvQLMNxESK3Ao
	 x4OOpRYg7U64+yFjCcxvgZ0KJZj0fY2UUVS442unmGB/WoU1hTY+t5tbcLt49AB5qk
	 XI0IPrqcQ4Hgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE64ECAAD5
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166191005331.8909.9237506746901221795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9152fa4106fba060fe2f0f816f312b97052d6e48feaa7538ce29b41a0fef18
Date: Wed, 31 Aug 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661910053
