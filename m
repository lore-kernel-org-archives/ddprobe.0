Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6670632
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80CDFC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669006254;
	bh=V9fZ8k8r21dghxMUVeDok1OjoMLPktChH52Us7CSTic=;
	h=To:Subject:From:Date:From;
	b=GSETxzhKQtUqA0oALNuGoXMmm7N9IEAW4xhYpmHaE5FRbEoUai1ovdDxelO0qUEPm
	 I9xwMT/pDU4kob9ixPVRLyKewGMKzQ8MrItAL/+Jg9flxsrjAzmPxM61vBoSzc0Pib
	 qtK4OVwxJ3L6cpqgClDgDDnAQ+w13cXZTeSnHEhyOpj0OY+YWwDiPpDMucT0bjxMc0
	 IlYjvPg3envxnD/PNfzf+F69sasvEcp4/Op6tNJFbVflB0xlAOV7iwlQLH5rOSpy7Y
	 y7kxIpcuTOY1bZpMcsULdStt/dJwKRU8XBS6zaTTSuQ9YBL4HC7IjqfPujYmFJgnx6
	 HXnfbjyhCS2WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 562D7C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166900625434.21569.17282994982208704769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a728d0252c68475cd4c003aec3472df1409343d8166f89d519feb1371c549a
Date: Mon, 21 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669006254
