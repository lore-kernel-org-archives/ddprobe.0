Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580813C04
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F03C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688826428;
	bh=n1SmlbLJQsUJI9UdPnK1xbYgbf7rqwRerSEqZJsYbDs=;
	h=To:Subject:From:Date:From;
	b=iNR7sq2w8XzBHZmdZFXBcK4320vWJu12TQV8L4WFtvD6pzkZFtimkpNF/xhqH8MM6
	 iLhNz36cEKGO6gpEbp1CHedvV6xI4i6ac0Ydel2xBjiVLOAiucKdarQYTsEcIMzpJb
	 DKUh3xfj5UCYoRB0jLu0PPSm24KBi9/iPQD0rLTXHYxzGnoi7Li+O6G+UvVg6OCd/e
	 hzw1makPQUG5e4K7IPiSlmMwtRoSDaZK5GX4JsNPYFHulxj9GygiNFRnq3ZN61O1Vg
	 mCT+L0ygEQMwMlk/1C2P6Ub792aEmJoyCyMReIelWl8uMuDZos/9cv7QvWiZ48ZZr5
	 Q+93x8/ttm95g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F60EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168882642874.30239.7853705233894137054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d794bc05ada0be2fdd4d87ffb80dfc4ddaf842dd50fcaa108c57b993d4e04109
Date: Sat, 08 Jul 2023 14:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688826428
