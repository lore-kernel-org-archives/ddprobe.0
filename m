Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3740D524F
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 20:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49C6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 20:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677272105;
	bh=1btSv9bEW2/0srPPJKVMu5m3gq+opSZLtv5QgfU4eVY=;
	h=To:Subject:From:Date:From;
	b=Y7+5F+oG6fJZhbNI4R7I/LFQ563pR+JBhzKkGbpyYEJpFhGTZoUyRIck4Mat+cRGD
	 6w6zSNPuGHIxJSpZNnFy/RGGyopr70itoM/hqKalIGcnZAsZ6Or4/MPfL+gqsokXlU
	 5TxpKkqH+9j2X6TyCU+VgdLRYSWcikAr4AdDamluPOA/pd3ovyF5Gn8BUf2WQaomvO
	 PgklgHYXlJ5eOjL4WtNdtqE7azWy5K1V1Y8KYkCOuw4XG/etqvDY8tbkLbjFPj/HHZ
	 f++o/3I62KoXBkvSfrB/C8ehmIBNme20RtgEDR0DPfG0V/EPi0QFQXfqhBtseqZ7rF
	 uLFvqbeenWPvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EE9C64ED8
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 20:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167727210574.23522.3238040949038112774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519154af2097553d9340a2c7c865051654de52585ab72a1eb4d4d51d16abea8d
Date: Fri, 24 Feb 2023 20:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677272105
