Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391FF1DE2DF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747675194; cv=none; b=YBj9f/9Y3iyxB+d+HzgWo2YVdYk2AbwFXG1R5AwiOAa3bY6YzvW3shh2rSS3FNisfdcHgszVJ73utyYl6ol11GzHJC4mUcg/WJm8R6qtP6Sy5Dn1Z6BRcj19n+oYn77MGu7l+nht/I1cnViLrbLVCaPN6++JRRDjQMwm8VPuvSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747675194; c=relaxed/simple;
	bh=znUWC5hVIrEDfEBUa/QXlGSu4HD5pD/pw7SMcX3jDAE=;
	h=To:Subject:From:Message-Id:Date; b=WoOkUTCpfl5zo/B93ZJUwNvO6kmS4klMRwknyjwyiPdXzfIQRPNc3jGzgl+GHvCQ+yMVto411FBjK4Wnsgo/bfwe1YykUKQZ1LG4mZ5EBBoh9CfG0fjNIwkzJ/DiKXbx53rk3CFtYnHk6zIfW/7cMYXBDaP3YAP5R7O5IDxZKSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkFpEfMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkFpEfMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F684C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747675193;
	bh=znUWC5hVIrEDfEBUa/QXlGSu4HD5pD/pw7SMcX3jDAE=;
	h=To:Subject:From:Date:From;
	b=WkFpEfMkmwLuMQt4kXFbTEoU6qPqQf855gdyeY7usuwiT8DP/oDgsbexP7/Y6cZr2
	 GZhBzFmlV+Ams6Y40F+CM9ZDdQI1V3JMpX76Du0lqvDT+PcMbcdeXnS9sClMfnJdNP
	 3zwx3JJlsDeZVCPXhcJd6z1YL3Zz7/qQpmbxa1xlRKN3pyikDxIDggrML7Qstdg/ol
	 wfLTXMVtQJp44mYcBNjaMWPzILiQoHs9CTw0P7KOdzDRMpLaO1zNTTtQ+fKqT4NgNw
	 ZbCiEaKCW92dck9XenwT93EComOgteI7HMgGUjwyN6YrlpA5zBD85SlOyvml4ewWeB
	 oAzc+D/kmHjxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC01C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767519357.14882.12039311553649113030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6460ddedb231cb3c2ec9556fc66f654765404da96d741bd180417acb1550b8
Date: Mon, 19 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747675193
