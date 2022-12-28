Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17C77E3
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C4EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672187487;
	bh=6JdQP5JVtVqfTrT6aykfZdDOkzmZde1qTblJC6ilODE=;
	h=To:Subject:From:Date:From;
	b=b5gm73hTTH0m+7g1tu2WB0fbgK4MDR7CA7kyhkYfw+b3+mH5g9fYVW6HhTBhmCV5x
	 WysJrH+lOzBcUMjVyUTdo3stTUp6E0w2D7oXEoBBswWTcWeiMwM3ltgwNdAeK6yy0N
	 HoBHiZDq06RjyyFl64C4Bv/HrOYykqf4QKcSCFQ7SsiL4ajGP5IL6CcVgMZvIJ9p2L
	 hb9BLBCGNe7+lx2W2B0Pkv27gh5FEV3tN+OiqBb+l3RC2sV3DCZQlLgrNHTmXF2ihr
	 KmPrm92+fR905ClIjhKQ7Xx+aZXlgXWEtZUBNU5b0Msr/VWgz1BfHfrlC+p38LTWiB
	 gk5AlLQBsIRgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B2A5C10F1B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167218748748.6263.9314290659374895237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dea955a71ae95cbe094e1e68e28b9415744e72eb063c0f7d608f6651439e63f
Date: Wed, 28 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672187487
