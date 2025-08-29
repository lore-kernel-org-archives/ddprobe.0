Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC972264A3
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756473594; cv=none; b=XtyXqZcd7S/MS3LRDzQKGFGLPajD8c6Ca5AxVyBgxVTgY/2OX9nZodjm8+2wkeP+BweffhHTpDOB+9l8V2x8+DN3ltjiVkODwrMQ9O4R5KS/CiOodBrm8F6DSszC1aNxDbx5qcyPFTeflBOcztpRYX1arR43MEDkQkzkwCKENeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756473594; c=relaxed/simple;
	bh=okOhXOObGco7w7sUjruJlEk+Ks+d15Ag8+tMCTuTW2I=;
	h=To:Subject:From:Message-Id:Date; b=maVj5Cgw2KfWEFQJ8A6YR75Z28Aj6ihaaRhUon4A2yK7qgg5qdY4cGKBPNQWBEk4rxSNZ/dDy49lQrHCwHuJt09XX8u4BkIQWkmDzZSSj1sbg3Yg+V1S685F6F/B6XihRMvkt+toXDcVqgbA3jsW1iY17Kf/eHvrSBSeKlc9qaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BszX+hVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BszX+hVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D82BC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756473593;
	bh=okOhXOObGco7w7sUjruJlEk+Ks+d15Ag8+tMCTuTW2I=;
	h=To:Subject:From:Date:From;
	b=BszX+hVAQMShNvWWUR85Uz7JT5hTqNRMUHpUnSRuE56FtnBHG7+p/zosrCmYFusPN
	 jk8lGVz/Anlm0gcD1YkyaRhxwfvXBFaZD3toSf5fdHzPsbrl3bR1D84QI7z6lT8hoN
	 QQmTpIoiJaFa5KkRW6flSOFldUN4KvEsoyzi5atnrObbisnnnQtgj30s4eN1p7Jqpd
	 q9HSiwndRvVQGuFuE/yz7YikUW+oQJKi2h78b4cCu1+VO47ybH4aMSrjyTS1Hkbtgh
	 1HYtJ+/cfWy5lFMGhtK1Y7Yh5L+H+gMZ9WCUGp/Y5+PjqcE3VOq6FA9HKLEYVSKh/m
	 MIxz8N7FI68yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9CBCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647359357.13908.17218672488283432677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3352700f77df637adb26bdf0383411001ef188889e7e95bcbb9c974169625a76
Date: Fri, 29 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756473593
