Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1482F27442
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772258694; cv=none; b=WkjdTRGhQYjO4gELg3CohrwIiJRhFesAHTkvRGH5MHzscx3bKK6dlg/I9Ev0upErK3pZRDxofL3QGru04VWad2eHySVz1Ev8h23+KPqRmQ+qXIBc66ZgpolQuYuNjux/qIXWwfe2m5/Yd0z3zuOLwqHtBAp39RosHhfN0b3MPJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772258694; c=relaxed/simple;
	bh=T3ANzAlJj9ZSHisbwoZcF39dFGLzswiCmqIRGX+zJRg=;
	h=To:Subject:From:Message-Id:Date; b=f7P/PVy+f9tBCpTD0EEMQ4L7dUVH3yz3APeQCdzU9iN/IrkAxo//x5Sg/xQzXxS5aAK4I+yuMUXDIMnPQ6TyrTxI6qWaUdUHN5pU5s8aftd5FldStD0aJBN4Mzkr9gkTlK+qAdVlnOeO/DlwpsIUajB/qnvEN6Fmy3C5Wfxkp10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGjqUz03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGjqUz03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A29C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772258693;
	bh=T3ANzAlJj9ZSHisbwoZcF39dFGLzswiCmqIRGX+zJRg=;
	h=To:Subject:From:Date:From;
	b=NGjqUz03NVDOpCD1vbW6MjEeeBsB5/ZokmL1UqPLOQr614h7Z6hjnjjPi5jCXY77O
	 p2STKl7z6JIETDdTTPTQSMDk3PpVB7GhExgX2iEjFLTLlwvXIkmjHx6qc5gDIXhpKI
	 BuLu6oI03sxl0PllTPzx5RIliHcEHnYfDo+X4JifOhuZLr2EnQCg9X55Djk0N3rO9J
	 iOvirhq5Fp30bpQvcjc8T+lZMF7D6zxGql/AuF1QzWYF+VqAFHdt7cZQUKnL4UwcqY
	 u+cFRoJqUZgsmL1jGf26rRMJk3FZeRIcqIF3psPweT9/TrvjbKoRBK7xivESnqeR7K
	 HL256/rz9Ufuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A17FEE4CA
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225869363.17883.14563308163485216061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7adee2992092cc3a1340d5394e8f8abef7bec4694e7b9458151b91f1dcaa2ae
Date: Sat, 28 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772258693
