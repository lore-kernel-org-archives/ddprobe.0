Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0886520B01
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmAZ+YJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 878B6C433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703066896;
	bh=S7vm8/LwwSbkmQq6QMG9+gHQPkjT2BvqMk9inqz3sik=;
	h=To:Subject:From:Date:From;
	b=AmAZ+YJ0XdIEqbTOFf86/I8JwA4KHZtRCHNfakX74NvH5zXkeyPQMYfX5Afrr2uXv
	 poSrSZUeuvOZifmh9oZMYAqzUQpK9Qk80icgdRiWdmhL45tkPjXNx6Gbqf9DiVasHj
	 cPdwO9mZgNuQcjip6V8ceFI2Aakiw9kXUHQxXzCpEu2c0oWwIoFMEpa5JCWzlpjYqE
	 jAJ6IT3mNO4t9Ete+Bqs5WwwukrknjKzv3C/pmGrRiG5VM4zMPyKENL8DENOiG9n4A
	 VtQ5sIETGwCOpjs+Gqmpha8KeMMQuet54jtaE1P03jhiisRY2RZZ5uVgtR+dz8wcRj
	 vXRqV00EYg+kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61084C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170306689639.12892.5549512488713419828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3548f14c5eac4f3b492759695fccd3593daf3435e98ad4bb61538404fc89dfa
Date: Wed, 20 Dec 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703066896
