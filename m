Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204B92D0605
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774016694; cv=none; b=M+MPt+7Zp0NwuoV85jEJp6TGwClkpxne1hjerk3/YjZM8lQHIvzpZU5i7RsabfbDCDQgb/q4ypnRaq5NlX612EBPa7nB9cSpTlJmhsWdh5XLFGxwnQkKE/3KS+k07a0UknI1/fIfWdQ59aSYE2WrZi/9vlNXwSBeYiBb+nrbEcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774016694; c=relaxed/simple;
	bh=AVhB61BwlwBR5QbT8oP2iH/23cCr8MEe1jbPvyWn7N4=;
	h=To:Subject:From:Message-Id:Date; b=S+Pqe6iVqTt6QFvTbHkh5GErAAzTaUsYJ+F+LGYBty2j3XG2IaPsKzZnv/JgxYl9FH2uhvr4hyLG2zOQV/rfCqEt9AUF0CJ/KadRZSB/Qd3ZFuNKiJ4wryEUfXb5Jd6i/kZTLLgAeDk07enAD5XHelhQgM+O21py8DLXwovVnhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qviIcPOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qviIcPOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF81C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774016693;
	bh=AVhB61BwlwBR5QbT8oP2iH/23cCr8MEe1jbPvyWn7N4=;
	h=To:Subject:From:Date:From;
	b=qviIcPOLVXa5HhGs5cTpT95ZLvrU/iHvcTSWKosJN+Kvb0iTIyZUDZJUo65+j+g3+
	 xSwsi9IPS0bWqp+aXf2dcJRgArXUDRijXj2NAQ/0ggrfWKR2IgBFdIycvu7zTeGqnn
	 ds1crxrOnNr5cYfC0qLkWoF2kejJMSWEbqpFx7G+w6L1V4VHryh20Y8WjYcqxqLh4A
	 aQ3hjrx0XXKoE7buhjkOUihrqrxa1XMhU5qIlv9ZFPo/OACS+2EGHs4cbsEQPu7/mx
	 t3djcKlyyar7Tu/WWedj7m9TMAO6v71MI48dBRKny1ls10WQJnfPo5+bkUCHcqbUhG
	 4i8bC+yXA/TRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5051098788
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401669363.11300.3476590544160890257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad4cc70a4f4c9db2a18b0f34a8326590fd5df6089a606fe83e29b8642ed707d
Date: Fri, 20 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774016693
