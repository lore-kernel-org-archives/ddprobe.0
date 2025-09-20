Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF858634C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758344394; cv=none; b=Yrde+GKsVqHySwK9l8ehjT46nL5WYD7DmQNzf2OdtVQWK0jIg7MYwCTmVZ4KAMTkBPMjWLxhVk7p4JVNUvPMm7SwjMqx2CubrT9gFsF4EaWcC0FupeF+zYkQa2yHYlk9D2FsP36+EEdLRnHG+Df600Ozp4wzodQ0o47to9JG+z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758344394; c=relaxed/simple;
	bh=UMxG3INY0O6XnqpOn5uJLlhfvibEX70jeZxJmfLM/xY=;
	h=To:Subject:From:Message-Id:Date; b=olucehs2ejbuYQVoGgEmObMS4yuKYjkosScfYjgqex/9VjMlbXizGXghQpQ+th9T4nNCos4H9AQ26TMf5lnf/66gG7Buwknfdput6HWd3T9RkUmbtjETKfSw8HAInQ6qnFLP7E6Vn8aDHoqWviE1W2JTMamAMFVvMV6Ii7ZbMXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8ie2LtL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8ie2LtL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCC2C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758344393;
	bh=UMxG3INY0O6XnqpOn5uJLlhfvibEX70jeZxJmfLM/xY=;
	h=To:Subject:From:Date:From;
	b=Y8ie2LtLWp/EGgAChglsjJhtRQeD8MG/ol8fdQuh2s15vZyRjTes0pQpOoKZ+B3n0
	 gmz2DHGmhLuzOqRueMyY+z+bRBzLq7dFlz/PHcmNaL947kkPIUpfhJQRXswswQge8W
	 Sk9um9PYYe5ptkol69CFUp0Vl/mf9xpnkN2vbiJKO9jK3gCrSAcxeCLXIy+HcBA3O/
	 2kzQmWc22PFpAjFdrnI4wswGJjBtb793mAnH0SMmxnbInfeI0MHh1DgNFuGCY3fokC
	 jt5Mber8u1Ip5qWHwpPNWxoJiEYRZ2jLgxqcTVRHvrvUSXjeN4IJ4Q9TfQwtiDe0kb
	 a7vK5WnC8NWrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E1CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834439357.29196.15485140165176166146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690c62f12e6aa659168dcf82f32437eb5cde1352a163403fdaaeee50cb5ecde8
Date: Sat, 20 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758344393
