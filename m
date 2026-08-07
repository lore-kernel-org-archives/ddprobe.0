Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CEC2F30
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786143034; cv=none; b=bh68CVUTU9YSNPnXX+H+j0sNrWFl9WRIppUJyuXAuGrjLDyuFKDdaEYDzaxejdQy24+htApNqVJRYxdAqA9R8shqZbTlhKN5H3wk9/dTgWIg1wG7HkZ7ZGUzoh45qCVAwaVvgfPFjI91ut+l59eoQN5iAKn/umYccpRIM2PFfTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786143034; c=relaxed/simple;
	bh=1zAXdeYrNw3KQiDLM3gPKBS2FpdZKVpsqnwXmkxvRF0=;
	h=To:Subject:From:Message-Id:Date; b=GzlwHCaB0xor5q+vdZRK7LWT1UwipjEXzMJSkD3hfI9pBNJZ+hdFJJTsjUNkaPlLkmh31k+LSnMOgBeqTVio1mdhFjq+7BbTf4pxBy6jYblmRCVw98JBevvm6QUwHDXcYjAOMYLR6trs4aXEVDYoSZWFH8IbcGUgfkRE1d9exKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgUjWn+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgUjWn+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD527C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786143033;
	bh=1zAXdeYrNw3KQiDLM3gPKBS2FpdZKVpsqnwXmkxvRF0=;
	h=To:Subject:From:Date:From;
	b=XgUjWn+EhapTO2VwT40InKZBRqmjOEWdrlfCuKm7fEf5xFetAW/uOLl7l/LMGuoBB
	 EgCG7DlkV0qI71Djs7B4Ifipk20MOLKrlw0BgqqnfIoknhGUAZmxy62pm8QaoIIe0q
	 H3OWV3ie/Hx9/elgM/Akun9aKhuvXqj/gsxS6ov884UP2pvzfONzPu+Ijxj5Q8LCpX
	 9OWUQrSYTlNfvRGm/mUbNWEYH/n0SystS8LlRDRXOVav7q26CntlNsAIqF8ZWMLgO7
	 oGEI+dl21LMhtoiyg1kCgugHtVpdHKf1Iql5fH2u4VZMAF1uOo5YFOkgxvtLNuHCty
	 Fj41sT4cD9+MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9CAC5AD05
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614303369.15909.6693780431283155576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d245146893d64a67b14b05bad740aa41d87263df375c0f963272b2bd69977e1e
Date: Fri, 07 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786143033
