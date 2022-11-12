Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4A480A
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83EFBC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668228654;
	bh=o8n3ZjKs7uFVZVBOhzyl/NAiSjetG5sQ5YW9aQxuZ80=;
	h=To:Subject:From:Date:From;
	b=Dfu4FhAUXj7eURwXoZlleOQO6E1ECKuCxxGmuklnpCX8OvvlBfpaiEvoekuBHNRAx
	 v2wpHlJnOyq1piZPPTkURY7AwqmXo7wr1U1kVbSxe5ZA7z45PXGKckJCWHNCVs8HIl
	 YucnoqrcSwkwCBS4mh+OgJApawv8/DF7tJcCAQ9iujullmVg+yvf6u70Eolv3o1cv0
	 EfKYMu0q3PLOnM1+QhB7sU75ejoA4ucM2PPQE+3vTcbpWUVjTyxdsCBQKuN2gbakcT
	 1wAa/A84U8oCYVtnlSvuekosHQ6qR72BwR7Jq32cSyCMjtupzu9dgnrvnw0cXQ4wHQ
	 9XzAmD7UY7DyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654EAC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166822865440.20441.13221556578693365121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197a86d8204e10a8225e30b990f8f075708b6e69339d8670e4a5f35292d63135
Date: Sat, 12 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668228654
