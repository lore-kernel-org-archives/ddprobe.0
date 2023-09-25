Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7264C13AE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 12:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9953C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 12:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695645908;
	bh=KFBqiJvoka28HhI2o9LeT4xeQ+vXbF3wgmCNLtno+ks=;
	h=To:Subject:From:Date:From;
	b=DlzeYBVevPre5nSWI772SaouFRm7Sea5vcByYDc9jA3vcKQIFn7xczgp8LbGGY7mn
	 Ltru69aedw2tGsHtMhQbg4/VMX+hkGhJ45MZ+eJxaBySmVt81hwpIXZzcEuRFf61n7
	 n41B85JoMIzRNlavNZfXgnSAv3IoET1Ckf9V1fllnPJutIX6rlr93bnghTW9s/1Ekk
	 h5HxJYx9Z13WBHulxkISY+iuSEZSCMJyMombI/N3E3Bh7C8ZsYMWjYRs3e4egG488v
	 Mi10dXEcUQZZFQAbiuH51VSv1CS+CH5x2OEEXbrQdzFSpgusfSR0q5HNuqaRZxwKfB
	 qYIPXF+JzfOgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD34BCE7A94
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 12:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169564590870.24337.18008597035949926927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 162722541d4577038222800df01f8a990d9eaa3ad5fab9e6a601b478f07b7259
Date: Mon, 25 Sep 2023 12:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695645908
