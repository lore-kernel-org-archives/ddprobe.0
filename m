Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EF7360
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 02:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E05C433D2
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 02:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685239745;
	bh=im/ID+RFupriRdndJVKTyfPMaDk6/294jaY5zbB4nDo=;
	h=To:Subject:From:Date:From;
	b=TS+J8GlP32Rnj3KnjIOmG/1lKg8ujMGs7WIzewcWe7v6qIKmYhzcM6LSKdAvuM5CM
	 2rbyKTd1Yb4S29Wsf4emLe+U98ZBU81ed9GwEauLqWgjB3YpAjb5xn3RlkAiATkOZS
	 BOw/U36642RhPqUzFFEq2BcdvPvhlyZmL0oh1Jl1TwbfC9AyWls/CJLBe/TlaKKPq1
	 F3SfRYud0ANmtZl5ETVwMXCSStgTbfje27c7YBF/epAeL+wlIgQYbpT356rMR0d1Kc
	 8ID7b65LttBKW5ejti0Dw8yqjX92iyCWYzm8EhGpfM6w2ZSb2Qij1TnE4JwWoMVbYe
	 ALj2IvqOILQ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3806C77B73
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 02:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168523974575.29069.14842300650356780349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ca995ba8b46fa7326a879c608b6cdae604c2543fa53d0690ff354c2aef4b5a
Date: Sun, 28 May 2023 02:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685239745
