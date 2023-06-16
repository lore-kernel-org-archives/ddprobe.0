Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D829DF62
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 09:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E2EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 09:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686906548;
	bh=uDGuROpIQLLHIH1OKPehwU1Z4TejFKZVNcPiy4ttazg=;
	h=To:Subject:From:Date:From;
	b=U05vV4CBoKtQ7H+xXV0cNLFsn2O0a0dynoMl/CdWIqHDWJ1ywWfo2JTzu5a/o8QxP
	 15LCKIXEt/jGpYOsE7vv8b7yOkTQJtZ+XqM9YsVrRfHV9bUk5tP2nQW0RNPdqkcMEn
	 UJZWFKzrmpiPy5aU4Aw7iXzjcKJ1ScixPuHWmdBOT2LaC4WCw4N8x6i69zXm+vq4j3
	 jMrLiJpt8MYPHRTD347xAcYw5f3S0+8mKqkUe0XiZXdn1VUt6hvfCyT5hoFeD+chYa
	 v9n57cxx1p3inofKCFZTml0S4uNty2bCjcJGcMqJRNKbY7n9OqQ5IsLoOQyVVGP5C2
	 GEvrdfRNY8gpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB95AEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 09:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168690654878.23028.5137683120195691000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac074d790ec14a0753f1f0486721485a118d7443b6fb6347cb643abdbb422f2
Date: Fri, 16 Jun 2023 09:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686906548
