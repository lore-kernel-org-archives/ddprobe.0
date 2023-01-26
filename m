Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3785423D4
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 13:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA24FC433A0
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 13:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674738185;
	bh=5ZsP0nXqt1KORM3sV9f41O43AVjQm2ZIjRaRgmsAZGo=;
	h=To:Subject:From:Date:From;
	b=eGc4YZI9GamZ8S9tnFTE/Czlwl76di9paarYndrW5h36FE5/gRx1NGVBtvbTckcxr
	 ntYthz3NDDhRvHq+chWDTyMKx0nS20zJ5S+gDhTVECyCVbAdhTEfs1dAsnAJkiZPMx
	 FVHWp44SJ08ASQFSqh+NeEPMNj+pfEXOEUDWA1bpcNxB59Ac14XsiHNODjdId84Fj+
	 d74wSsW7oMHmhWJJZdWosuf5paryPwpphWf3GAP1S6Dcf2vmYtHOk9MF2M0ymvKmLz
	 G386PcpTVlbRgovUJ0RQfUBBZs0UCaPFofD0zCQAP4AKQSjw8j7ofxT2P6tLjbTXK2
	 KAne2pQ2A8pAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC124C61DA2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 13:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167473818576.9760.10429175594726301833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340bfc730d1ca125a260332230539b478b0c6d6d4e46c2acf3918e47110dfbda
Date: Thu, 26 Jan 2023 13:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674738185
