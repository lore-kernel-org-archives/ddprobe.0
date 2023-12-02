Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE9D6137
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puSV2VhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 816C7C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701489496;
	bh=2nShsGm1ldycATkzZivqDyg3nyjmvFgaf2gudPThNe4=;
	h=To:Subject:From:Date:From;
	b=puSV2VhNnx4B/EK5NImCCuYKb/IBRib9AR+7VNYNjFjPesDh8QgNvxvOhxZvtLYw1
	 K+1jixADmPJKPwUV2fM6crPjS078AgElmWlj7uy0OLSmctVRAxFMxZfMoIfW0ey8fc
	 NZVqb1o4z9u5Oa3lkhyzok6CI1F44EWp9vpxymYCaFazEXB4SG9kdyZ6rf+OyXJW13
	 RsWoGgk/Bzsgv6ZQmJ5q1MgGkeXV1wKj1TUBIaJB1xDGU/xnpVxG8DARQUerQm5o1G
	 +pR19d7VSY1eNQDouW19h8Jv8ZJ2gxe+HU6KP3kLPsxwlg9Ik2uBpVvgAeVXQFOQt1
	 Dxelk+elORz2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 671B9C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170148949639.22226.1466736282744581824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c4a433984b9aa5c000a69f596757ca7481ab6f412f5742dba26bcafc0e2b098
Date: Sat, 02 Dec 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701489496
