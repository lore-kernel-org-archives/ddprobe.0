Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD5922F1B
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trDzenIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DDB5C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703257096;
	bh=QuD/FnGtm7yNIjibzez1ZN3n6D8YSxJx86KUrrztBlo=;
	h=To:Subject:From:Date:From;
	b=trDzenIqR0K2UXF3tso3oHiOqA1K6kP0mzBwkA5FSOuegeVp2LotDpSB//BgGJWtR
	 qBDSLyXtZWs3uHKTcvIgvP5d5pbBBX0l4h4zxW73rY3s56vSv9VNqKuwHGScDTysCP
	 olnvOmkV6bBxMVHw6evAU6iu7lU/BHbVOM6+KkvIG0bg22/hWFfxx3cWGeWfVgTx+H
	 9iZkVwdqRYiHYrQVNK7a9M7lkH5ach/t50E9tIdQEtDES7zXiPsLEUHsxHs3wEu+Zz
	 9/cKiWsUEOK4n+GUewV4j+1vJ35yCKJfXyVl4VTEiejT0AwXfT/xMiq3lji83uFVCv
	 WPMzC201Czgcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D54C41535
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170325709637.27305.2844491416662684370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712ed88242e0eda4fccd1f35d5ffbf7b7358d219df3badd99ff99150f4f22208
Date: Fri, 22 Dec 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703257096
