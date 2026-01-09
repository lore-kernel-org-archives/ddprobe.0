Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1371241103
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767984834; cv=none; b=ROexo7aEGPaW2KgbvHG9WdWpIflCVf1CL1cjm9z7QtCj1qUMxQ8+6xBVow4yAPKqEpFHUq7lpbvVeIno1h4Dh+PHjcNnEl0erSH/Pj5zDK6nI8vLZJOFtSGmUXhvEpuYIj/v/cpHhdUJe8p97nXtmftOn2T8s7TXZK+zXBh0rAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767984834; c=relaxed/simple;
	bh=vt8XLFfcPRe9Utwx7MHuL70+jHI4F0FI14qDn2c2Nok=;
	h=To:Subject:From:Message-Id:Date; b=maV//9D584DhBKKiRc50E1yrdwO1zNDW51txeoNir+NrTUILIJbIhKJ20+VguJWpEum96fopsFpuS+cSPZcLX9hzBEfHL2VbbVgQi91+1npQcCiuSUA/6+ciWGHS8qcKmQ6S9jF/CBzNpTjYLB7+uZ2DAG7gdTTaIySyQXuLVQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5qWrT98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5qWrT98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3726C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767984833;
	bh=vt8XLFfcPRe9Utwx7MHuL70+jHI4F0FI14qDn2c2Nok=;
	h=To:Subject:From:Date:From;
	b=F5qWrT98/9ULOoswtvHS9tfcJ1crBaMaSBlNX/Cvsbfet3m6/EPG/33wYuDMsN01r
	 pKi3B24Rk393dwNODEPb1CebGC3tH6sPw9AA2tMX5FuTbq5DzwVoJox7slQoQvIkIl
	 ON7/pvNx6FxwpemjnqlKjZCFulTgUHGD6JuCg2UDT35vVIKWKzDTNpHWY1ZBlfotlj
	 zAhSEq2jTpZtakerHHNxo3YyszosPBa6ADzIJzdhG35HLcVu+lY7NqEuA4flTZh8Bz
	 8pYnoBFw1heXDqfMULVpneDFlxL/2tZTfr0LRi+i+00zy/Pt2zPSvtwuzQy2+qYZbe
	 GxKC7y+SDKQdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC3FD26D7D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798483357.25298.14094451992183485972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0f12ee9f54179c46abf6e828535ba5a8373d919fed0e2b9635ef2aa434d8cf
Date: Fri, 09 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767984833
