Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090722D060D
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783951714; cv=none; b=ArU2TLZIgzALqWlMjP1TIV7dbzlZZ1LhKJaUz0sL6W9p5BxJ/Gh8a8e06d2QKNRwHDzHjYjI4NtbJxwxh8/EyJhYnSgm7DiYsqX062dYboFY/17B/qlOd3dwjnXJz2+bRYfjPl9H/XTkWQsLqUlD8HE9krjbaum050KD+rSpi5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783951714; c=relaxed/simple;
	bh=zHVjKR7VMrM5vkiwFo2+zfXtbeReEd+3//DvzueoE08=;
	h=To:Subject:From:Message-Id:Date; b=Vqx8S6QU0H2POa9nuzrVUG+gUMpxdXau4PMsJTQMKy2Z1eK7moFVmN2syrilwQyTSW9YfOIEsBM7XLkuWNavl5V7Jm44Fi7wN/4pimugDITIhfQs7tU3EDw5nlRldbV+rma0GalkrBOufD+ZxTHa95b/KRjAP/E6OjVpuEDNFDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVvjLcWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVvjLcWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFB3C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783951713;
	bh=zHVjKR7VMrM5vkiwFo2+zfXtbeReEd+3//DvzueoE08=;
	h=To:Subject:From:Date:From;
	b=eVvjLcWEUGeNV3M4fGnJOHB+B/WE3PUbUdzplt+esDGKibiwPno7wtgBRRM70okhP
	 lanw/r6/C2zkDdIgLrS0HBMG+eD/vilSMOAuL2AGRDyJFgT30oXV+Xozd0WTw4I8re
	 Zt+Qi4K+jBSjkddSXlymB/yBKWvndLuq2dgT1EB07G1nDUKiZxHzmUeNKv88b15LoE
	 zI7W0dC7mAQNgxhqhXZlD9wMERgqbuJL1FzfHW34o1NJR+nN70XCCwk8sRJkWARtgv
	 why1PpHtwozykGx/2YaA2fL5uogHVXuYriEx/OfSn+70wH/OL+lQe4g0yk9xSIaIk/
	 vWBKoLcCS0K9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E2DC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395171368.13502.5632155533535756452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a5529d91084d58c428d51247c3c23a68bd1e59d93726c8a22a0f76e10dfed6
Date: Mon, 13 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783951713
