Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25803236
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7106AC433D7
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669228254;
	bh=QNetrdAvf0hCyv/D0fmQ8idvlFPYU+402+A/6q8cPbc=;
	h=To:Subject:From:Date:From;
	b=QHiNvKm4p/0tAB9r1YS/xC/UChV1lKKp7UYS1cKipg9aEKu01O7MKuLKKoD9Wbs3A
	 GiyyXzGnDr5wLx5nwjWtnwjrUQ3Qy0PxCijtBtT0kTAmqqPMxlC0ErVZc78M7dduo2
	 j+xOeerVjRuXWNCQeGvsSHRKVbr7q7ZWhCTdxDF1nJQMMBz2Il07yh7CBMcMiFJj2t
	 gjmSjdBNiFwlgsWkMSPUSITy+3p9pSD6vQmNQo/JRk3kZgO5Wj6KnbfmIWSTnr6j3x
	 lAGYo0V1rgAPl5sGNH3Pf99vG8uWqH9hAAtV1b8vmfEbF6XqCyAaX8LuiKTm5b20as
	 BhJFzOLguQK1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57AF7C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166922825435.4782.3783636864117870859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87e1a4c0de0506d3b73de201d21b6a5874ade0cae5f2cd7cb8e4e2eb33d1fb8
Date: Wed, 23 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669228254
