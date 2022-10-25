Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F107B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69820C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666711253;
	bh=ywW7SDW2fm5TYbUdjJMPZtbWFTM9wys3JjEio/NsZ1U=;
	h=To:Subject:From:Date:From;
	b=Kz0tbzVMI5I7CU8P24iwz+NGwZYOBe1eqMB1GEK5M+IFKqKR3+pj/D/UGu64n1tFb
	 7JnannOpQGjdHyYMWT5D32x519TRcZPXbzRvKB4BSpq1cX/XHdfR5CIPusqsEyxHMh
	 qSnU6z1LgyhsV0paZyfr3ocfJ7RpbwH+G8tjoCq0zdfFqSZ4UWiHaoUx3Z/iZmINwH
	 IJbvL8y42ndHJKOepcGig6m1pVVGmmQHSlkpdmAT8vSU5Hwf9kTUEiQ2Hj0upSj6ai
	 jjFkfb+j6sRmnWBwY4QI6w+dB0nkBTnGbYMaG6kEVGhhyvMDXNYT682/MoWy0b+w51
	 b9CQJ2zO6VUHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DEDC04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166671125333.30936.5442880813946964078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b801a2dd2257b6c91366512837e159baf448956b7f3edc053a566b4feb9294a0
Date: Tue, 25 Oct 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666711253
