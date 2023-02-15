Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF1015AD
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 01:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8222C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 01:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676423225;
	bh=+nTMqO34YFgzYzUeTlH1eV78l0At7oeWj5gdN4KjPew=;
	h=To:Subject:From:Date:From;
	b=BR7LhtR4gOhfVEDyZBNEF0ADwrgbA6a5/qsLegiOvA8cL96HGFRi5N9Yz2+M44MGj
	 rJuCLoXtTK82sdF5ZUtcxyDh0o3WSVaiDs5srOFknFryfc65oUOsIkAYQ11ekY4sQN
	 fEtkkP+yANmsMv2gK3vMqs+dte0Lf1/AQNWEzSZ27yvctG0q8cVROfmnk4wFKP3weU
	 E38Rf46MV+TvY5f3CDK2cIuCK75TaWB7q+w9du5KSgSDOp/oODfAqA6Sz6QvHbzEHe
	 g3NRX8zNe0SDjXf+p0B3gXci23f3/AWcBkU4UtNZYIlMeh2RUdRzHYArkmPw2Xn9JJ
	 1DXVXlB47ZfJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E1BC61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 01:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167642322574.9253.16979720288850163180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a448aa8296555206b599978d244eb1e204c85410cc0227a43dafcee2c3be3dd
Date: Wed, 15 Feb 2023 01:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676423225
