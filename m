Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2532773C
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65162C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667430654;
	bh=TymPPtTAMdqlf1KPfO9NP6nJlUlEvD0N4W7PG+51+gw=;
	h=To:Subject:From:Date:From;
	b=s3TtGGTZC+AcuDvD/xlrMJdNLYK/FcwCpkcFDUFM0aqqruP675r2nfi6sU0gmsQMz
	 GLYTLYaMoV8eSnVBNmXMqvFD0z2u1s/Kxr7pEjKTp+pXlUenOJd7CkpRAUz0TVMy8d
	 VcD/58TmWEVbQI/92Tf/lut4eRvzZke+UbFi5T0yeznKFWOqipvvc01rxZNEAsh7yq
	 /1tl2RXrDW8un/9GRB8/zLctDsZjlH0bp3KRG1RZcUfSdiONw6Xjg2aPjQwakYi8LZ
	 25lKslbY1uEHfuRUsgBNevxI5wmfRKN5k9qj4HCwP0ogohOzqMAV22qvYZnzU53tSb
	 8VegWwYGM2iIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E88EC4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166743065431.5556.10735987582087071836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b89a48f43509ee2279fe0e929485fcee11064984fc615dcd1cb7288ba9b72cd
Date: Wed, 02 Nov 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667430654
