Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F37D2673B0
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786848634; cv=none; b=OCw0qVZlRckjNy3N3k8BEpjONOuGrfWLqqwTmu7/0TKTfuvFB2TapgIZ6sC3xDpoYaql9DaqzCwzk/Lhbmwvv6IhIwZ7kv+PP7cslsFjK9Fnpk/7h/nGVO35JEtnbJcvGQOkySUk6Gk53YOl5xEwV/exc5dABQ+NNkgIK5m9vi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786848634; c=relaxed/simple;
	bh=/geZOuggNJh0/egoksKB6GYwaWOttayaTdwpA+nFTFM=;
	h=To:Subject:From:Message-Id:Date; b=cGFs+s97Z1fK/esT7eOEYiLuzSvMw81YuHYYke5m8eGgdfHtAxODFVF3PzCP2IT0+W58TLykp2C8wFnAp+wrTUbO6as7JWk7wLl2V9yRI1QRYnzat9CtPYYjcrcS1XEqJBhko8O9QTt9Xh5WKfhtIOoS4qwNGB8qWHhX+j5XK04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNTxL9WV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNTxL9WV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5686C19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786848633;
	bh=/geZOuggNJh0/egoksKB6GYwaWOttayaTdwpA+nFTFM=;
	h=To:Subject:From:Date:From;
	b=NNTxL9WVwvEyaTE/VPbSttfPLziwjQ73dfWQxIskoKPleQ2d/lMy+E87pU2Lvji+Z
	 zKPRgjBKsxhZUdtZ49SJ0+ZnAxOrfPhZFPGNqvVh+8xh9VJyJLUo8s1Li67IX8wXlO
	 OgAhcr/bUjMKGHBBPuLNnc+soQfGcQ7GMXN5CzjMvZDTb0umVUjE3uXfzV071c/b4D
	 K8wIA51n5knePHvK5bGG7u8ztMici6LX08zcngXCPZH5TI/aodqYMBNbbRnaD68+1h
	 jUWaGi+40w1RbzjB5DOu1FBhS3Bq7R8ND/ZPcmszWDYFYH+5Ua8nk8AizOqra3TgfQ
	 U/QmjCyuTZQIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9E1C5CFC1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684863369.28180.10120246410557288283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e517b1c6502e17e1d0217aab7a7bf337014b5f6a02abe8744e443a3ef4b6977d
Date: Sun, 16 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786848633
