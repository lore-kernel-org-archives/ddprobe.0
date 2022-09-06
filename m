Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80CF7E
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F84C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662423053;
	bh=3xHx0euALYJ84QShlSDNJop4T+0Fwl/hnHD3SxOTUhA=;
	h=To:Subject:From:Date:From;
	b=jKY9Apf9X98qNDPHXK/HUkQZStbbUW2U9OFq2JszvLviY3xV+VmcCU/IQLROLV/IN
	 YU0ipJMb0qGXoaSOkcog4KSok94PsmY3Lvz/37ed2+Ata3XRuEBtbCEL+C19yGiT3c
	 J1zIiKhEvaVM9PnjNtm9kYkNYR6uAvAj14vP4qOQ6CJSAUNf1F/iegknfSP+DpR50g
	 EjUhbfCZW/twaDr1fo31VmUyF1gPZ/a1e/hEWGxdwXlA+WX18XPEJGwGrq+CGY8DS0
	 ONTshH+c9ZXDd1ecgSNQXN0Y2zWPZbt669igao4ElsyWGABezi48DoCnf7HNU2QhX2
	 Z55vmFLsBKG+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57FF5ECAAD3
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166242305335.31442.17388858488097358216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222d945dfa541d01be11d68ac823371351a58b6f02c2d97e3db717075083dfa4
Date: Tue, 06 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662423053
