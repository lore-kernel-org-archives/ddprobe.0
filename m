Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2376625
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMZcejlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE15C433C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700788696;
	bh=pLYFXXcCzczxRtCtvAUaoZY0nknOGF6Hng+tOTCM5jc=;
	h=To:Subject:From:Date:From;
	b=pMZcejlutZvUNWC2yyT6aCXe5B54ZDtLkbRYTnC6g+KPxJjERLkxFY97Sy74UdG6j
	 9Ukbumo/SbsrPPgRivju2JApNERphMwI5faHb/orTYq0nxP448ZefycylRt+KocuFm
	 9Gwymvj4T8CCwb3G37et4/Xc6hNPMgC5BD/407CPqGfefh0dW3YWePDZ70acPSJZpz
	 It+dlJagB4cQvjBVX05sW9aWdlFrrHfpogXds7no0RUCTY/qPerygUTyvfI+dviITr
	 jq1ngT3Gudl+k0aX9zKLnODwS66+1rgjZHMoXKHnBtS6yzpIcUsURtxOc28AVdemMm
	 9L9yv5i36kNRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6283FC61D97
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170078869636.325.10786309380767936879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070c6d741393482c96f159933b28435aff2f265999b2ae080ffaaee49d953b9a
Date: Fri, 24 Nov 2023 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700788696
