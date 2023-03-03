Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C9E538C
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 11:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77F4C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 11:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677844565;
	bh=+anlQTykhFjYRavsSu7560O9xoidz3eAYjfFjWEew/4=;
	h=To:Subject:From:Date:From;
	b=YpyONv8U7VSXA8ASzvyeLjDFkRagPC87ZGgdLVFDe3G+2NXKpe3bw2kFAIDDqnW67
	 Xr6fHAHKD4ITBlCrsmDjqdXHl4gp7xESG2qw73M4CE6zNXvMeiyGV4dFEpjSLS/NCo
	 h1+BP6VZcM5kFL3/mAkS0MYjPE8Ro+hgM4fzh4p4pdfKI3j7VLVbBGMfPVRT57r/eM
	 5S9qgMsi6R4z3sIMOpXejnsxRaa2AedXJhe9O3t92qn35CmdOrsv/tlrp5qGB3miQg
	 QKbyDeh9zXK9hg/GsZTpfmt3tz1JOOA2kDSwv/yIJCyhNkOSv/ko4h+J6gEg3Dx/Zp
	 Pxr3cnm07CIEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70D7C678D4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 11:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167784456574.27778.8426253594496381122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cacb1125e1d70abcada4fa6a80d1f814a31fd8ad5aee2aa8a67ea56198e1200a
Date: Fri, 03 Mar 2023 11:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677844565
