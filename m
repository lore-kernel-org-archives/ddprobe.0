Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04B3747B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 11:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2819C433CB
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 11:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687780389;
	bh=6ZqTl2ZjDv4XhBePJmprF036Ui1i6yoXWTuz7XWYukI=;
	h=To:Subject:From:Date:From;
	b=cN02GnDQCnqwvdDps34LsijOPQA0k5tD26ToQzbdL3a9OKqhS38X3CV6UIv0GaLhI
	 nVpwR5qvq1lnu5CmuhverqBcjdqNWfCA4q7Kv3AZ2Eu2o5mNq+PoQvh4ax4/AI2kNB
	 N2A3nBc4NXH67IsM4gr3Y4EIUicYU2QLOKrJ5EVH+HA1A5hPDo/gnVpx5nNUHQM7zl
	 eEmmBExbseg3jqo8vHam8dUdKdp4vMRWdir9RPb7VbrI8yRG6AOYjvkickun92S4P/
	 cUYV5glzvzH+GqU/Mpqgl+e+GRCnIXi/9N/D/kINFKMXq6ZF8RZvrAP5izHN/kpN7G
	 eHM6ZfgiRRRWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D29D9EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 11:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168778038884.25655.4023514601958850788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c4e3b650464eab34e6cd1f500665ffc12b0ebce6e038df5a1004195d72e8ed
Date: Mon, 26 Jun 2023 11:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687780388
