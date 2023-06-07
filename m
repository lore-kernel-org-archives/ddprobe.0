Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7466DA948
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 08:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A81C433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 08:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686126725;
	bh=bdTGJEMS7kTjTmNTE0N3pu97BQwEPQHNLqbgzX+dvFY=;
	h=To:Subject:From:Date:From;
	b=kQhFvuAO2TXBh+9hQtzG1piIpwG0vJBU4JN/RHampkiPB2Hg0ZCgRmUYThsOIY1jp
	 ng8zOP2lBG92wJgROtK76vwajFNOsw4Vx8HVgki15oEw6gaV2KSTVEQCeqLeh0C62q
	 7hWPEgxM5+bjg0YKz8aYae+W1JyQcOqOL0ZWyCz+ox2/+Pt/g6/h5Pebifu8CPd4/X
	 LkYJnzsmmBbvpKuVBRNx4qditmWL0JiB71tde/CswpwAln5U4Ocj3Q03lBpFdQ2zxU
	 jX7YiGSQFIPvKxJK+r6+/BZ2WPY8Fv5yMNv1glBk2TuINZdCVLHcHoau1zIScjLniQ
	 P1oLe66vqJh5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6ACBC7EE29
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 08:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168612672574.3473.16239800341181491175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c1f6cf5ba446f12b335a18d6ed51fcef6b4ee20b6ba8f49bb64b1ddef105b1
Date: Wed, 07 Jun 2023 08:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686126725
