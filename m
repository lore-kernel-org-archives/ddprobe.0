Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D565249EB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749866994; cv=none; b=qNLtp7Hmx2lszfjJc7Ld7y4WoxUehIzl9CBzS4OuP8EcXg2JqdkS8O+CPlL0JVgeLAeZKwM4AYQXR1hw0gAAliBAmz5hIUFtIUWB7NfiXHjiLLErp7jbiwJIbz70zIBDVGAL652LiFQx1Pfba0y+2+K+yADwO4noQFxasTdCJ0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749866994; c=relaxed/simple;
	bh=phwoDRHIiRxCtN8xGdbvWcqHE1fqgf8wcmSxcksj/P4=;
	h=To:Subject:From:Message-Id:Date; b=ox1nBN7mf1FYvi2IloFuv97f+f5+EO+ByyXpVkOyU0UO+NVBiyuNYA0TSSB4PHzLC+HiE/fAyE5JvvkG6jCm4bfhpS2X3nrPgNK3sRF3JS6njYF6T5D/0g3kYFgHTs4BdWOiEUcXcdcG4vh0qckuwdpMwZHH5yCxIb8FaP8NXEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RG1BIvti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RG1BIvti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C7C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749866993;
	bh=phwoDRHIiRxCtN8xGdbvWcqHE1fqgf8wcmSxcksj/P4=;
	h=To:Subject:From:Date:From;
	b=RG1BIvti+zOCgLKE3OIEx3LEug9gk9F1dRuIk5RsxJSde7xZnEq5bkLefuIqWBl8m
	 TAR4vIztJMR8+efgh/XWWNZf/A5AuhgLxdIDWIc5E3TkWUA9TsJiZh1I/jqcX97kmF
	 9MzljPuYQISpS/oDrXD9fPoYKAQr4DOsWbN+wwzXkAnc4jnJx34Y3WgJmfsoo/7tHL
	 TYN0UtQ79J/5mOLt4X+255SBnpmcFTLekdngFQhGSh/05tCRzEWUrQnRpwQVkZaBFb
	 FRVyIMGUkXpg5IpPx3TDgFPgON7syqPWObNbWsd6TOIdIwOnCSJfsc6CRm/VYkTmw+
	 heSSVObzyZF4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6ADC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986699357.28824.4038887827752225633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53bad9ca6d3ea9d2251a657102451948a5812f2cb546801c1e93377d3a5c89b1
Date: Sat, 14 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749866993
