Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99CD7F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 810CBC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672797687;
	bh=Y/+JY+BE5vD+4aYvm5JcHqnl2kES77DYZFKwy16iPl0=;
	h=To:Subject:From:Date:From;
	b=cCzkwRGejJlmtO8g7UycAD6q5ZHVF4FicEdDc1364X5hwt4PLStOIOGfHFrwSlV3e
	 gNFhfXG2gP0b5OBpW4zFh0Yh7AOPjH0wcMmhP1VJoH1weO0oIspJZVNHrAm7R+PKUT
	 UDw672WYPeebNds42nDU1UQrASJrHZLA5vvVVHBpvVH04l7XVddRjPLk2yz1vF9ber
	 iIYB/dEVcFGLY7ncMcjEjnwcrYCbbh5ZdJ7Aw1Ec6IKarE4mpiKgc1SdKK5/l1aSAL
	 XRy5DMq51SL8QCJ3JCkfuN2cW21GhwPtYuscjYIy65gR32khKAKTdl+LfQUWiBCX+H
	 ++CXg8UORZ/OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609FEC4708E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167279768738.14888.5740299811817079102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e3dbb1bb9f78032f50e3162fe43ec56a1cfe7ccedeef06f72806c2d857600f
Date: Wed, 04 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672797687
