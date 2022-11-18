Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86F5A473
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68F1BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668802854;
	bh=3XB/I1U97+7jPaJ2C7zkRXXSarEQNMdLvULhBeC+kUE=;
	h=To:Subject:From:Date:From;
	b=Ulc4zwBiaV4KhGszyaRy7r332QAwE6bPGsRZxNvWW6oBQs8+dYTnozWSHdTz88BiE
	 8Vkzk1SXw0+7UYRzxCp+Sn7k4pPXlcATbauvfNbWbIS5kHV0LrA8t4Y1WkW4ecskM4
	 V+g2PFzvMz196Lq6BbdSYNOZFiEr44r0vAK2cvWWoiOtlaSTmwjzNOm2d/8/zobdM6
	 pTaBFmd3OaEOOAqxNy6Xz8DHdSPma7h/xQk9bY0b4Nm1GzrbYjLUkUup6kIcjrM522
	 MpupjryRLMBvXJ3g+yTWrfAo9T+bHjBj7mfWf5zsvTLtjHTqTuQzfqBRMjYbuKsVgk
	 m9LJRrdL4X+hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5370EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880285433.18012.1068393278446629899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a46deb6cfd8fbf83a1734acadf5feeb103b9aa89019b268a1d949abd20b0f95a
Date: Fri, 18 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668802854
