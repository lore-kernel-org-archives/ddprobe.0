Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44C66106
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C2AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671789687;
	bh=30xNjPrIk7SvVxAuGGSF54fgcVaQCIFVjJ1V53o+qcY=;
	h=To:Subject:From:Date:From;
	b=lA2OuMWR1eZmI/uts7qOBURT1V+95uS4DDulYn7RFWZ9gecNjQA1ujYg4Krfy1MFb
	 AlXanHWCoFPRdW5OzYHcWMDTl6F/rmWm3C6LlKFSQKfoQvWQTp+L1Q8Jb37nxqQ8I8
	 ottmQyXIuXD8fiqspBX+tBKHt35oQvwRcsEbmZt/M+ks4+AT5SKAGBAe7QsLnbp8jC
	 WcW1uuEnD9dOeGLutpfdRTRsytzSvb3cmmotdvbKD/Al/DI2Xt6y57WIYJHEI9lY+c
	 jynIOmtKzGpTe+R0GKCqh3weTH7LcGNmia9XubDG9trrC7m5ggXo2GS6CgAkgw6jP4
	 01mCl+14rQZqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63278C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167178968739.3540.4575338885837683610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32b44cb64392e857061b85a9402de2f39f1b725cf86f5dcdf1b80c8884c6bfd
Date: Fri, 23 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671789687
