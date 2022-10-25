Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9207B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D535C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666738853;
	bh=VXy/6gWdmTLMT/B5BGOQLez/8Jq95gQ1wZSBfwTkXj8=;
	h=To:Subject:From:Date:From;
	b=LKuJWrnvvkipgYq3G1XPODIjKjiBXPt+1G9xoxJqzmzBjCQYRn4xx/OzT6pavKahR
	 4aFhkHplHdG8pvhVyOPQFzX0lYPpigjt2EMeRPmcu3gYxydt2rPoxptWdcrA2HGA5m
	 5wPkxGjaAg1vR0Y5cnu+Kn1Kgi2vqTuUNwtGVYesU3109BLOTy91aqcEy9ugn5S2eR
	 JccvDuiYpeQ4SzxocSrY1cCSBPQ9jtgUZY+kDgf+4omby47wG2Thw5cq+DZrVllf8g
	 bjIjgw7mIDf+dLXIzHZnnAXHC/KEQ1sa12IC1F8nLE0wLxyDzhhXXOKY7S3plU6w3M
	 RMI4gDUbhICxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F012C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166673885331.9628.15269114317067515509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50037ad591bea7f3a469be8c387cc085de2c9b5968b75759d31635d627cd8b10
Date: Tue, 25 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666738853
