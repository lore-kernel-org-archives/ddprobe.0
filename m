Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B925FEA6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E8DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669095054;
	bh=Cjr8xBun4kQgVwMckcWvk+IMzq3b805cePmJ15DwJqk=;
	h=To:Subject:From:Date:From;
	b=CCOlRiCv7O45xNJe4jJsR8y9vl1kD47v+qMo99nKo88LiT4TjOwZabLjfBB/3Tzs8
	 kHh31GnW+cqrKVXqTmC5cQax99eQrhz+1ZlhJJpxnXVoaAE95qErMyjkdUp7HufbR5
	 s8egW0nWEcKSDvAJln3Gg1nmnrWPn+icECTmO78gvvYvoV50K2ghL6IHbx1VGwoSgN
	 QL0qc3J968i1DgQ8eqgKVyLY/ksoDdgPK0epQHrBNbnI+l3aLVRaCHHPevcbIkMMqN
	 POq52dsDFVWaqc8vrFot+LiPzXwXfzdH08HX31hkIfBISwsp9uOXWS5DsFnCiTurFz
	 0oVomWzNZ4PAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F899C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166909505431.12042.15760931672367491495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b83a65092056c7867589fd5c78520d0c6394a4f6e5f5ca6c866709b331c5d56
Date: Tue, 22 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669095054
