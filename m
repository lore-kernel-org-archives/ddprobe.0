Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A05963C9
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2i9sVbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E81CC433C8
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700386096;
	bh=xCjQ/HQsvyqAkLB7Qb1Vb068Qb6vzHHhZsT2IZiEnig=;
	h=To:Subject:From:Date:From;
	b=N2i9sVbHQgvRvQWFhHJTkG1jNX1znSEFS33PqqRSat8rJA3vztyJ7nciUMUhtDKUK
	 bbI+TtIH09DmPie4NS8SJzrTw0jfSv/T46Acv/cBPcH/0y772rRAYHnZ0kclOEDIP8
	 5pNhR6TghkrvbMePVo9GXUgqM5t4rQD63KT8B/X4aaNq4ap+Kw/sUL0PkJGxC/SeKE
	 Y2l0fk1uHSQ27jR1JLIeta5D/oa/Z5DHm/DCekuwTnMugYbu+dPoPKBqCwwpdEebYN
	 gVH4Ry8szWLFJkGk2Jxpo4+PTq12v5AmxYneAG8Qdtwy/bvbAqc8kgeqsAb/xSvyRv
	 51z9Amn1WGWfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E6DC072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170038609638.20003.14297047679009781690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5a2a5646c5319649bfa49afed1004df8ca09b5e66b015325821c01605bb32d
Date: Sun, 19 Nov 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700386096
