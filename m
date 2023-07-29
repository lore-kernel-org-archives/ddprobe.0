Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505A218E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 05:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF78EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 05:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690609928;
	bh=ELWx0BP2WSTFjb9X0Xg/+Ih4m2392q0aYvJnFWnL9LA=;
	h=To:Subject:From:Date:From;
	b=EWWXMO75R7R6/5uaAipD7SKcx49HT2iLsg5FD1NG5TjZP2JQlhSdqKDDzOdkeGmHR
	 iHX9hlL2alm7/im8TSridudKcV2wabWO48gPJS7mIS86EQ29mClgYSaPcDXK+1HnE0
	 Id44Md2jKwHUQ153JNkfvtcxoAY7FjD8xzu/m71lhDuUGTtRgeBzprW+dl1pDWxTc+
	 s/uwgThtexK/YGni0aB1wgxH08256kIUn3c0zKhaL+6zm6WGvSYmTu77VK/QsHpnWH
	 UzvWiP5oGLVXkd5bvFj3FkFMHPWOMk9ENxoMq28shgCRfV0hIKf9IFfrwQH2fALJ9m
	 9y8AO6LsANdjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3DDC001DC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 05:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169060992869.25249.11153279768808975328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f807ac68bcbe27afc827fce8b775b4a7ade3e3a3cbd8eb9d40665cb54d1af7
Date: Sat, 29 Jul 2023 05:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690609928
