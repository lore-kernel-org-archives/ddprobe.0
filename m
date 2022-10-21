Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBABE6102
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F64C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666376453;
	bh=Ssuy8P2O/OL1onwezkDACXdR9YopHakPa+zIMaAWe60=;
	h=To:Subject:From:Date:From;
	b=r7+qw6DecgHye+IxO4XtcmmRNz/eQASGpTY638qMc6wSiukqSBMw73JNZigS6V6wz
	 TNNdmlddfnrNyYAoetArc2GO3HW0T2O9ECbIH31TlC/jRRMACSlJJfd7Yd1X7wtTjp
	 GiW+zD26kkUugoGyFtygzn7xfJUyMpk8GIAMXmtyTU3du4hZxkGksBm91kyFplZ23D
	 CD2QuGzbjpUKC8/4NAXIF1MUlddfClfDygvCHkUd/VnU7p1gNj1V8uLBsvId7ZWRYa
	 ijbbbxf0pDd0YS1UGJ/J+fGsVaheHHADmAeTCrseYQcTI+evWPzg5b0ubmWELnuv7+
	 l+B3jlRCBwV3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571E1FA373D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166637645335.1727.8119206327311368959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6df98bb3be269edb224c29431613e7ede09e3b26a20ceb62e8cc1df9800257c
Date: Fri, 21 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666376453
