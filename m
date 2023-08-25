Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B21CC8E4
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 12:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7012C433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 12:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692967448;
	bh=JQy02c7aLtIgm38LIBUIqJEn897tclWc+KnKxYxwR2s=;
	h=To:Subject:From:Date:From;
	b=dccTrYVfEj68cHCQVzv2xspXJKmJOCW2Hw4Mp8Sz7R9oIFWPZzY6cHSj8g94mVtsf
	 zSCefFByZpiZT06YhLeyVQ7nVCDWfbwbX1CDmxW21AalpPVF17UtCWJ/o8cCoeCT6i
	 grA/iMoew7Ssjm21Tq5GcaaI9xpeK9rfFtmPoROGJXgwKXy1OD8+iPBUJnNAigeoOS
	 EosFeC9jTeBYKpZSgv6OqDltUJhQW1FQZq0J9U3J47pBmHaBNtK7IerGfnyVURc1oO
	 ASqL7JYGvkCEoymr9v973va+9fnHV7WaZPZBJm4TpkmTRsbW5L6oUG7TP2b0cyV19Z
	 44X54jCVJTTSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA351C3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 12:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169296744868.29374.9886517176413624941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2822b219c5aceafb0a02176f9ac27848c3f8b3d6ef88b1b6acbb7c14a1911cf
Date: Fri, 25 Aug 2023 12:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692967448
