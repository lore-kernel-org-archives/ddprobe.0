Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2578021507F
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772259294; cv=none; b=j+h3yhPPaAHFtU4YCrlHDey5T0gbc75yyXTWmw7sYo1Ki3sw3GgFksN1fwfEJEnI03gnxFqTeWsbdd0+QschZRiB2iTHrEXXbVsyNLzok9+F/OzPyFEOHj0YDWsOp/Ddi2UQE3g+4H5IQBS+7FQGcLZWWAQe0jy7rHpuVdPAunE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772259294; c=relaxed/simple;
	bh=N05WEC/FUCEm3FE3t5z/aQYIcy74W/q7E6fjBCNFlhQ=;
	h=To:Subject:From:Message-Id:Date; b=BFPd4DFln3ZBE5cyftQQBGsLdHuG2yRekszHuDpr7Ni0d1jQkt84MOTxfx/nAONRP4XJKy4ms83exPTHSy4oHymLqUFQWk5ye1bdoflG8zPsgNper3kD3/lWOlzqYafzOYF8McFHtst2y7PArzJucvmtjWxq5834JJRu5hPNe0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TImh9L81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TImh9L81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4065C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772259293;
	bh=N05WEC/FUCEm3FE3t5z/aQYIcy74W/q7E6fjBCNFlhQ=;
	h=To:Subject:From:Date:From;
	b=TImh9L81Ss9J1Dv1QSVJ9xniNC0Bcsd6N1bXYYO0WVtlhL8Ib9sl8Vs6V5SMupL8s
	 fSbSNu3wfs1WbSYDi2mSf/6ourxrWQBD+5tnLmcDNH1gr5LXNzTVOGKODQwURSARPN
	 bB/aZ2VDJ2mNtug1izBKUU/jhgbw9hmJT1i+rIZLHMsnDRGAzA4Pj32Q41hAVocVG6
	 LjJNcrsZSo0IkwpAtfJpcIwnEAljXrW71B8IWzD4840ZpPm9dhjJwtEKjr6Le4L3pP
	 bdFUmaJq/vYg2Q5hF8cuAvbHBVIdf/xHJwQvw2Grdz+LTTXs48wFqQaLBJbGDJhJdy
	 H7u8kJs+T/k3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909BCFEE4CA
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225929358.12239.1858284892655134890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e53cbff94167215686a4ff15e61aabd808f7be4e85f290b987101fcdae34aa
Date: Sat, 28 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772259293
