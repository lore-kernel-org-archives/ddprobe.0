Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361E91A2622
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749890394; cv=none; b=ZRN/3b0WSg8YUKSMVxH8KaUK3JwloG/Ov/YKBV49RMTo/B8c2Al8N/Ihf51LWdYjjSSfpl1+RfdosDeDoBNuE0jMeiLc2T38qZv/NsoGtezn8kqgeV5u98fFTxN4hYnAkYcFFPrOD+sbQlrPxzVhYA0QDfFhTnFHTvd2HdluekQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749890394; c=relaxed/simple;
	bh=Wo4makcqCKQlnHxYg1IbEESuNcOpvVCWUjO2ItiKgLE=;
	h=To:Subject:From:Message-Id:Date; b=laUcIu18/XkHAo3jOCZvj+3I+3ZMFGgnGlCC2G1F2Ws0WAizGXpZY0gC/0XHqjBfFRt3zYcYO8dsrfVFsL2049vRNERaCz1jNClTMz7X9HO9Z4h/bnbLC6aUkrlYn1fEyzihI/dMUCHyF96Hx/N58jNpnMumCcTz/DL9OI0o7lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpYPP9b+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpYPP9b+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A777EC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749890393;
	bh=Wo4makcqCKQlnHxYg1IbEESuNcOpvVCWUjO2ItiKgLE=;
	h=To:Subject:From:Date:From;
	b=kpYPP9b+HPII4XYOp+slltMSL8fwqeXN6j+aRbmxDiUbdoUMj0IehVniTUMFCjd7L
	 OaIugFUMuQw14vlno/e+dC3UGpyvY/yHX8pxxRRc8sW0DSUV/ycwOeDlr9aKvSvBrA
	 d/H6VueaRksY6WdWyXubCL6RdIyfh014mpeLwWQaZhNqRstqa4bAB8uQRnTXYdv5CI
	 uffts7KSHWYVo1HDC37HVZ3riy+HV2NnSmzAiAUUG7rzXNYJXFdR1EjBNI7gaRDEmE
	 DQGZW5mesQiVBA6qKKmjw5/JPIW6RTjWFa685ijPcksX1LKEoPSWgaS7BCHoMzHaJb
	 QDTsIQUA0T1ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91646C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989039358.11914.2514377354443935906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3388c633b2759aa44602d31af81ac115574e475bba80b98659e427c083503d3d
Date: Sat, 14 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749890393
