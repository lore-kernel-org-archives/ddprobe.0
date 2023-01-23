Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F777C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 19:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6A6C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 19:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674502985;
	bh=ec2bF4cXUn2/OuPr2sYDkdjstjVeA9TmS+xKu8IIHuA=;
	h=To:Subject:From:Date:From;
	b=miA/v3JfAZlACCIt8IM0xPVtPiKAq4FqH7BCKFs8uW3lK72Pb9u3uoQQV4PROm3dJ
	 MLpTB7Q04G9aIjRFM/jPygEPEbXWeVi8NkqJRm5QpxZJDX1YGkdR3nomxD4+OMjf/6
	 7+DhouCnajOuW4AtzErS0jpRX/ac5JCH+2RZLJ2gESJbIYa353MjFMlgvL5B7Y5uL1
	 AgOOunR/fnECZ9GMleIEv7xxtgPcVKaZpzHduZP0nyzKM565JZsqaDkwGwQztHOjAf
	 gA/Ar9df9KFtUmC8iuHC+kW0em/MVxXLoFzL6wxFB2Z9Pz6cxgPJeCE6we258cfLSA
	 74ERuXqfiT5hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2152C38142
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 19:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167450298578.29981.9398152934349503144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5b5997b4ec6b68abe3fa73e97cff3b932d3de668a7c77511d456a4c5d883d4
Date: Mon, 23 Jan 2023 19:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674502985
