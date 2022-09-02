Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32D67E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 710CAC433B5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662105053;
	bh=9X9e81Cqrpl2JZtxtQBU2MdfuRCOn2uSlUMY8hyfPCg=;
	h=To:Subject:From:Date:From;
	b=LY8sIEcDTzcmuOtdbX+LKNll5TnB5Gv8XWXmMpoi90RQl9ZOMsT4SuzfLm8PfqQGJ
	 JyP9RDEItsAUpT5F4nWmUd1K3ymtSCWUJ0iOFtnHc8tbDChJJSaJUuuYXRDOQqenh8
	 W5Pb3cSN44uL6wnCEIW1fLA0IV/cWGT5Ppx1nMtcakc5uAZEHgflReO/Qugcv/YoLH
	 nGoqakluoyWWGLo72j4VTKose1/jFR72xg4au66w6goAmsEVkTUYM5KTNqICq8wt7C
	 h38qxaUNIea0RSeckEm7QLbmn6oB/0U8B1B3tMu4GXN+WcoikWbMtlF1wfaSNSnjOm
	 FEUsJAq3eGE7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59180ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166210505335.13567.12132264877878949959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e6b95ac0175b42c5bcf36b3e8863d20f3fd848eb163c917b76bf42d53027ee
Date: Fri, 02 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662105053
