Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF13E7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E809C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670911887;
	bh=K+Hw/wimLbq0t7w5cP7+A0pGD9t+1+BMr/ltK7kHtVU=;
	h=To:Subject:From:Date:From;
	b=VNZykiwM+TZspDgIkG69mvfB+MEhVZNl2gk1Av3S+AKYSuyug8eET9Q42Uy+oB6YF
	 ovgfvwWQWWxI+H6LFBidLla4W2GyLVJpBxiBpLSMOreBkvWd3IfRdoS2UP8oyxQ+On
	 lD/CgivoGQhglR289WfHjvN1WetHky/iiVANEzRFd0zz5zKryKj9gzZ2HZmEKCso/7
	 2N+nfGp9PvGX2vFht4Dcz/zoO6m6SuPH6Jztpotdbh+lyh6arevy0zQdfF/uq1+i+3
	 EKmHYtrgXaiV4XBXJGJ+wvBK9XmOt0T9l/OnIfQWFVedfIAIGgOUhMx3TPokk/b0Cd
	 sj706vEYTC7dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DA79C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091188737.21717.11476710447994529217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749f247757a812c3f57b5192e856cd91e64dd8a32af2f48c31ab9191cc04471a
Date: Tue, 13 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670911887
