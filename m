Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70628E56E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 20:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8563C433D2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 20:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685823485;
	bh=FE2MU2OjjwPtwG1w0+QPwYrZNEemNel0oi1zbncoyDM=;
	h=To:Subject:From:Date:From;
	b=bfsNIffzC0P6KCJ5DOn4XLPa1ixG9U5Q7N0ay1NSbx2678B5asM7EOvssXVYf1EOF
	 F+RwN7KvJdcYDYBzPFXYeAdZchgf9Vw7g2YptcIV0UmkBcz5S/s2o+4JZavUqwhys3
	 wt/TFJdlT4OY5Puxcx5vUitilsKvocVaFEtoI1CFxGdze+1wI7RtnNFbaYlkyLEmoI
	 Q8f6vPcQmhoC3kXNNaGtpiwfkKOAMhgftBulFqT9HSj1MFa/PCLZy8DOjLvjD9bqZ/
	 C+9zH/LxvuPdCY5cXjtjrom3xb7s9m4iOnRy4FDeq2IjoHelJsiftfVA9EzZlC/meC
	 EIvOJcESzltkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84E3C77B7A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 20:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168582348574.30910.15220687434822204364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56556001f31c61b78e51fffa048ae177eef51bf4c95a05376f68ba6507ee861
Date: Sat, 03 Jun 2023 20:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685823485
