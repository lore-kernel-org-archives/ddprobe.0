Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30D9BA24
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D901C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669749654;
	bh=87Zynr8ohFYtD1ExpiKcPsxhCw3jw/f8GhuQCTPR85Y=;
	h=To:Subject:From:Date:From;
	b=TcLQA7eQQCzzQ/N4jdZEdVfJQF0HdCtBmgqIUNH6gAaInTRumlomehUhevKz8x8Gi
	 Sg9nFhSERVSXYAx7nRh5sP9d7jotduO4LH4lzEV5uNoe/ias1dsm5wLXEQa69AxAG8
	 +ttpWziMWQBO5HRgzYDF4Jk1Hl+1TCs5LBlY6i1QsB6U1UBpEYrG5ueAFoW9S0AGCR
	 afRoxmQAbIcyHGNURjqAfLmYzH0lRu7MMU9UGYrN1YFFrNAzHtJgvaEhkGOmSTBHbu
	 6s6dJ3clFkRLChqLsz2VPMpxxJACt4YfXBeRn+sgHc0bG/6M+VyDm6+3hHplPX888G
	 4pMC0ewPgN5wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53481C433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166974965433.8209.9918062872023818815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5b751fa91bf8f467f3cefdaf8ab2d6a3338bda0025ab7e84bcbf6f4c15fb10
Date: Tue, 29 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669749654
