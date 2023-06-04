Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634AB23AE
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 12:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10AAC433EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 12:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685880545;
	bh=grv4YQ2Oa3IM6VTF5TgJHVney9oOL/nyjtlCqTvnM7Q=;
	h=To:Subject:From:Date:From;
	b=Z2DUNn4GsZMGQuxe7Ch4xLzQLvZ2KbE5UCqHHwNhmIyPIFk45N4uMIlYRb4ix2fUe
	 qi+G8uh3VDrzc5CMUIR71Z5kld6cDDyrRoWSPgUgLKFCMf6QfLZB0rZSVrAm1qp95L
	 cjrZW2Ztwb4RyJM5CVkoIDUPe5wKItyBGuHIcVX8FcMmHQpgX0qgNJwdCngkVlxTpF
	 0C7WLJsQ30x0JJyx9BgahJyRnuU8z4WDtCmL3mk6WEWnt9aKA9QvDEY26OwBnbOIM3
	 wiiyVvWdIEtp6uDxcj2Hm1olF6JD7vXHJVLUFsMJBYNUJzBaR/TxAMg+MXiipTUHZ2
	 5BKdnv21Q5ypQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B783CC7EE29
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 12:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168588054574.309.2060107700697281544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0b4d324a143473c549bd370736054f78950b3e7e4750e732bf172932cdff44
Date: Sun, 04 Jun 2023 12:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685880545
