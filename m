Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04C1157480
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765996434; cv=none; b=C0H7msIQTyTEtfOAs1iWVmyITQsZMN4GNpyjS8IEI6BTtJy/TlDD/CzZSJuTp9SJnawiFMRlFulbVL057PclR1FKq+7R3bZGu+JFiOIuK7EhoxjwTfn30N3W3uVSRKF+xRF6n6/hCZfgtg3RWK15fk3CaApUHtukHnYt7PfHn/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765996434; c=relaxed/simple;
	bh=r2YDfbxm4XBe3mD9euaYd0KkLxb/Q30WLTWxyEPAc1o=;
	h=To:Subject:From:Message-Id:Date; b=N21UsZdFqNn3upHdx0pGlGjHjkSsDwCF5Jso3SCh/mp24N3PjxBQ+Ztf+I9fGZOa6XGQykGOzKnyZVkUglwbeW1Qdi3Z5FXN5tkFY+Wk8kgzwPV5u+uFfxW6QbmXtZ24Gea4FRFcNMPAiCkUDFqRq7OrjTmLWTaCe4EILqD0B7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bw2qAhzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bw2qAhzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFA4C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765996433;
	bh=r2YDfbxm4XBe3mD9euaYd0KkLxb/Q30WLTWxyEPAc1o=;
	h=To:Subject:From:Date:From;
	b=Bw2qAhzpPo1QwgtG4dcYvUleteMddGMTuy3KTimqn8X+/VATk4dNdMXDQEZLsiMp0
	 DTzjooDjZ//h2HwCDgsiwdUKW7Q1tXa9SgdZYcxlYNM5wIwPD6LiHV0k2P0HZYonRr
	 HHP8NJJ99D4A+rOqK3U5hSY2i2EScdHa2DAEO89wWp1CPH0jAVKsgnMcyV8wyqxwa8
	 fUq1wmNgdA2HUqA3QFHYfyp+kKSouoULx1xEhuuMI62syYDeR/xGacC57003hW1+e2
	 pXbSbnY6W/u+aND3/PotNl+4clOEnT+0AZ9tJpB8KbANoJpm/W12YLHR09OZ56wtQF
	 bHi50slZXdviQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B0D66B86
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599643358.412.16822859735036223180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806e4d06fa4529868384f6696424328d66141d30799f63cad6498fecfc8b23b7
Date: Wed, 17 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765996433
