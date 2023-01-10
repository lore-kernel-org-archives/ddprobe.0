Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D866FCF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 919F1C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673365887;
	bh=E0IiOsXFra2++Mt9sQgucCzvn3x5UWU4Zja4seQUcgo=;
	h=To:Subject:From:Date:From;
	b=OMnGwtiWRZG7+DCuC3gY8GvBzR/RhQtWeyn9Qa0FJjf/rguLA3kny3anvUmLHNe/F
	 6lGZRSOMsdpaITyo44l3s2dJBJtLy4H8eNJdgVIxlHPsilPL+xR9C/TZqA0cYcPJYj
	 4L+MGZFK4l9mGMoEAqbnzeOIQxdGlBeQpWkIdUX/zbtRH1ACuYBGkAM/9b4vFYqPa7
	 wyJ3K4mMIsVJvvVltU23hKjvSVVOKugREaTLjoFrw/4cSjNK+fCd122iPgaa+qjJso
	 dF70XSD4M+nPgEt+mot3+RaWVj0XXOCNBFIitV4yRPVwpKll7H+7+RGKtNmuYQ0kru
	 iJ9ER0W2/8Uvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7398FC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167336588741.16254.13220003358591665552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed3bbf5b000a6077d7ef697b519a5c9598975f6e5487729dff53d42e4df59ab
Date: Tue, 10 Jan 2023 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673365887
