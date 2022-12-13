Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C9623A3
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E93C433F0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670918487;
	bh=ll22or/Mu8yyjWAgyD7giU5bXxJYRYtBdmLns+CzAVI=;
	h=To:Subject:From:Date:From;
	b=JAK8EIDnmeIKoVnlxQ6cYNTEPuhWaXwi2soKqZXT6Qkql0/KpNhgpp/WOE9Jh9lpJ
	 nmF+naZfeLJ+1BcOl/r6RyN+SnSTSu+d2CWOnOzjlg3LauO4Vtu0UHweCR9w8X9S/G
	 N+/9dF0iegXlKmSJQU6+3TDSfE9D5Et8xrcTPiJ0yfNFD2eyoSj6YFOMjHKltUhlOr
	 uROl/Hxodj9qEp5yFsMu7SUQUuaiXN9GuACwzlEPrl3OIwhTY/iScYQdc+tPLWMhQP
	 G71ONwxbIrF+SKo6YIY1QHTxcqtjGvuuYEkEwvOIRYzvUX0cFt7PJeN1RavwbhtrX9
	 w+Aj2sKRTZdKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E0EC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091848742.12914.12001788798521540841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ac4a51d48c7f7320693660f82fa01d5c9579f7de47ef24bb5577efff865b3e
Date: Tue, 13 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670918487
