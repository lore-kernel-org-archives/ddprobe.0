Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1EFA2912
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E410C433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669244454;
	bh=tI8YnyS00Kv+9+QzCDjg8Kcdc804inoA/YQX1t8SFdo=;
	h=To:Subject:From:Date:From;
	b=jaGc8TcTq38DqdbuFfXc0ESBGrDNGnr5NbNRmvkqxXinjVnqt0dUo4Y4PjQb/7feY
	 FCq4pbZb7D6cpgjzty6zEMcRoDq/8atPLGGAX0ZpezChbmboi2LfGPsKoVJRuHdNuw
	 fsg5YeQNi2braEymhwIYxkx1TTsr40gTQ6ymRkpDzU0A/a26mKe1hwVfUCT86V82Mw
	 +PYc0+4lJ4i6IdB9DMTy+yE1hB3gv8IKI+K5aQGyGgwTDHKHZc7jqCiukg2RpN5xvB
	 NzcprfZTPr30mEGn1Poxp18GVW1CGvXYvseOj1g+/SJGjVWkReQcq5z+Rf4qg/VDTL
	 x1Ni5OERisiWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E58CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166924445437.13984.13945623850494400166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7b7842d763c1405609696be032475f6bce288fc81192c76b4560463852c989
Date: Wed, 23 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669244454
