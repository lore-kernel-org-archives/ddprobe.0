Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE65EB2B
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2A2C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669459854;
	bh=6nAK2f7khoJme+e2NuqHkhLwQF+jDzBY6lRkYWXJ00Y=;
	h=To:Subject:From:Date:From;
	b=Fd3IF6nx9EPN8oU4FN89csCQr08ZUTR9VgJOl9sHkBGsJ0m858SuQWGJj6HIY5SOt
	 7+HxPOklRhoerIoc0f0yFyizn9nEYrY/AO4QuW5MjoIXzUAhSWvLucDhWGyIXJvhsH
	 v5U8RVj4+9Mw6tlts+5owQurQeYFtLDhb+tEs1mEZnxHIiO68FjxMpREAqbp12Rksa
	 AX2DPBn8t2r50GZvKnVnh46kXdJDJCIlGAb26sQ/hRhw71JixZgjjCTV8fc9wo5rAm
	 lBQM9idj8KIQlvy9mjuawZXwz/QsBkGje580/VC094iByOXj1df1DySIdgw3o9pqFR
	 cA9wQgEePqNuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C43BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166945985435.32206.14412555853736498679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ea3e47efab79798d594fa829dce0d484b8f03cdc9d31470dc3d0cd033537da
Date: Sat, 26 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669459854
