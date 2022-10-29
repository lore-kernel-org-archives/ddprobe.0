Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E1A15B3
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73357C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667010654;
	bh=loEsmMPWFlJtO0/HMD/uum1EYABrplkEU1NcKQptjSo=;
	h=To:Subject:From:Date:From;
	b=oJ4D8KNqh+db1/QvJvl/CH2FtZRtqWilTCM7Ar/DMje1P1qX7kJGXC6P0r68VoTbf
	 Y7vGe1zwlG3ypQjIzf9An42o0vxydudS1ciK2/fpEV9T4lq1uT+93ki75A6sxNky0T
	 lAGLS/3czpLQAjT5fb1xkheJZqV93qIcaqk/vsT/FbVVUDtOO0QOMtSBXOJd/y+g6s
	 4SWygevBV95q2RO3CmMZKm0kNr0jTbclHKMM/LBHi9kVpPh51wMVRON9XqfkXRy5vP
	 lr78soJuQlzGYucjznEZ+e6BrBmw9RfrCJvqZsn8791l9Jq3aUjVopIzUpq9ZVyRCp
	 aM5CaI6DNRiyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 559C6C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166701065433.9216.13995449897505831946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131f3adf0807fe8a93d0ebcebefd0ec26939161f728e3fbaeb2bdc9c9cefd4ed
Date: Sat, 29 Oct 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667010654
