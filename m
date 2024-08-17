Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B239460
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723927554; cv=none; b=qxLK/AM4bOh4C1LV7GSBbUiL4JrieBEq4jW4FqIy32RXciFUR7FxBwuNrQpZNzHJ4hVN9283puPdv7+sJjjGW8u9P4ptO7bUJwsW5N5QFU6RHxrXS4AW5mXqITWpqq/xOh87IUD4P542pIxeMcZHTW3JGSvwOnG54Zjxw1/aJhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723927554; c=relaxed/simple;
	bh=LfhjYIZ2bSRdOBwf4C9nVrLAOK1yH77BBXvR8T0TnSU=;
	h=To:Subject:From:Message-Id:Date; b=fkvdzwmkWzk+J6L7lKQN909qdljlZyaZ8Mc7cYUW2M4hxhU1RBuh2bHMRQppDQtAFcP2sJDT3AuIshe7LfRDZPsMyYsJ+riCnaOlsiT00KrqV5EMMWAfj8scNPN6Acctm63biKK2GR/C+1Cvi1o4A4QmTVgT895jvUo+761Ac2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gg+wQtS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gg+wQtS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0DFC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723927553;
	bh=LfhjYIZ2bSRdOBwf4C9nVrLAOK1yH77BBXvR8T0TnSU=;
	h=To:Subject:From:Date:From;
	b=Gg+wQtS+LmieUF0HaeNp+O1FIy8SkTLP0jOuSSec9FTm92+faI2q08JZ+n4NS4b35
	 A7NmTzt0GlusEtpeczHbeHMjz1RE6K/uNCTucQsUj5BfN+liBZkhIb4ufBCOtsbZ8Q
	 NqsZMwATb9a/Q6xDr0GtF9fT/6JUE6YN7SPI2iB99BFJyirutZJam/32JQ9KNgyjPZ
	 PB0gF510rr95k7qJc/55jVcGt9ogDLiLkiUR5ulNVfpHzWnLlY0YH8fN4WuQIh/s+Y
	 xmEzjK9DSNtiugH6BdCjt/KK+Q5Ic0fexRc8VQpoRLK6jM1MfJFONqY/Gu8t8hdtC/
	 JJJvFq0k33VYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996F6C531DF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172392755359.6975.7534079283588298148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adcc1d61970855fa405a42385912906d66b32fa928874d558cfa6268866ada4a
Date: Sat, 17 Aug 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723927553
