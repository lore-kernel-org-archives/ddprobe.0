Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABFE46AE
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85578C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672435887;
	bh=HHjxRGllPd4qk22T9/KSPPIcv+JQ5A4Q1YvdCgaPG+4=;
	h=To:Subject:From:Date:From;
	b=uym+ISEfSV/wtAv+cqY7aatm6xK+OTksWxj1lj+IWgkE1+HlVK1rkjUs78GJNixA9
	 8kLbsYXex+Mnu7qbFmXE0uRo3jGT25bnUvwhr5nJK4ZQvaNXrvahpXczl2TT1kXMni
	 mRXJ7OXW+GuKZC6mjvEekN+aItQwZp28x1myJlAcUr3fxpoACGQbo82UM45aPS0070
	 9mm+q/QCyjrAkK3DpmPHiBNvzgsdq7jikqci66XqyPYRJe9jo49ohvN6oOGYqKpLzz
	 C+PR2nhccBpLnle7OEVAYCZJbS42D4vkINnEfkKSwzXfjH+u2idBIOJihhlJEZywaE
	 4VM4AopvTubcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6240BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167243588738.19475.9675595167379855314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c846e89f63aef5d707764faa93497a765d1ca69b2a17e618fc0df01d6b44a8ca
Date: Fri, 30 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672435887
