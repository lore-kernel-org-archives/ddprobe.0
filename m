Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6C7280318
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771603493; cv=none; b=M96gxJkmAa0HrgGF/R1QAMKzsPsyZRowPYSt9dcBMdy9aVVuKZlXxGa+3j9CFqcRWRURS5U1XflSAVEsbrSv7f2cPVVa/KyaQ5K2R+2l6qAuPP5I3lngKkGfUF4uPJThVPNyq+EYxTZ2V7scqkY9+MX2XqP/lY6wfotBsLIY3qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771603493; c=relaxed/simple;
	bh=WENfw7RMDjVOOnm4nKddrO9KFbc3Esdc1unyeElcI4k=;
	h=To:Subject:From:Message-Id:Date; b=HBelKF0uJu7720zQtl9+wci8SWcepkALjfCIc7DMp3Mik2rBXjYeUS1ANIWvxhfpQqHS+lTcnM8fAx141LcAKW4qT5y6sCBVnDh/cwoyGaUscIvUEB4/edrQ8KGsxd4eUL1LiNngtX5f7xCs6bztMi1cGeJJ26J2BJiy8Fo7+1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFEgOuy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFEgOuy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78ABC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771603493;
	bh=WENfw7RMDjVOOnm4nKddrO9KFbc3Esdc1unyeElcI4k=;
	h=To:Subject:From:Date:From;
	b=QFEgOuy003yCjrXgZq9olo0fHtUQ1C51XHT4pU42lZbDngNSnQZo1Lb5coQrROl4x
	 xc1EPdaFoVA7ZtXLRUNcnPFtumOpy+eZd7oIUjLuH1Vs1aMLstM5dh5WLgrmhrFVRG
	 +rOQq1En6+IGVKTTHFECJrs1PVTj61K+S6OZcryWxLmMOnqJmV3UIJPD8zLPnbZzDR
	 PjKCheJwT9v/6ni3erbJJ4XSNs0VqY4SKUhaZhg4aPjs0fvADS5aysQSJCtNx7NqWI
	 lr1hygxj1l6taMKg5App4JWliA08tTTb2PeO/jZ84BpOLLjms7pFdctgRuN7CCs+UY
	 4wsDqnsmvF7vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E81C5ACC1
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160349359.457.13432202922715194828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0fe179e0fa61801bcdd7299e8ca5f9d3076947b7c15f0e7853ad8b2127dd049
Date: Fri, 20 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771603493
