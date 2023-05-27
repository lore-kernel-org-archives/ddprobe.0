Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D57125DF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 21:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2899C433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 21:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685221746;
	bh=+V+ri+Ejl9LWJNfL2FxbLig4m8yqm2v9cvwGBbKxw48=;
	h=To:Subject:From:Date:From;
	b=Ve7AjJ9lDeD/MsiywwyosBCham7vsA7FrLSkMk9YnPv97ZIM1YGcLuy2AZqsVgxn0
	 bdpg2ZHV/on4s6J75e3Vj868k+8M7PmtUILv62HbOFYzB901HWP5QAQWToQHE+Jsl5
	 FKAkqwQ289tt67UUeZNt4nlYKRZcAd4gCfRQPB9nVa3cpeHe5uSGRYbyAhvZgQDkbA
	 hJzFxRpsoJRy2QdL3rU9BN56nquTDwmtQ5oaTbpRPkXsvxZqrJeNm9bWePLCMjq7Ct
	 SKIp0jbh7VKi3h9FjHRr+SfBxX1J38/jQ5LBsoLAxo81OgNBvq7ksEYT8rrZYULITb
	 kHcFEYvSir7Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF965C77B73
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 21:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168522174580.11580.3079631181198882851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77990814aee19184aebfdbb03c3aac44873984f7dd82a7df31c33174d1e8e9f
Date: Sat, 27 May 2023 21:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685221745
