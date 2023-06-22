Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787A5EACC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 08:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27A7C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687421588;
	bh=XKM0d7etuUbz9ZqWj1qgcJTBhpz2J1WPS1LzuJdZ29I=;
	h=To:Subject:From:Date:From;
	b=UXOrH+Qx/nKF3s9XWgGRmaOGcX4aixbxwSKf1aKfPl5VfFK2icUwWJ5tpxD6Sd7n8
	 DUCX3cUHCIW/m4zhvtErvlNNRzkD9AANCPRnRxSp9U3rQfsweUSXpQIY1jlsf0m9so
	 xiqTCaRm3ISuszvX/Gm9QX8+kPrgcDZRkmQD11uhJP2gNnF7B5KBV7+mwcQx8arENj
	 rgCjLNwxnepg2vOU+rl8ZE6/90MOczXgoHBbZGujjwnNqwwS7TLPDxNf5ThrQtMjnd
	 8Oi9iLKvXmadYa/d8OBgsO9kDtJb+NSKCwknQ82gHxQIG4g0PGznvhC15HAAVBh8Y9
	 XHRz8KbPG1HOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EADEB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 08:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168742158875.13325.12973795225909384032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922ffebf00df9145742f746037844d9f2328f234557f37bea9938a209564fc6c
Date: Thu, 22 Jun 2023 08:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687421588
