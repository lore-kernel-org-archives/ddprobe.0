Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C702D78A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752112194; cv=none; b=kj8D1lYR9tP4jVpdVcvMQ5pSg01ycBUKtJxq3s5MW/HvXVznXt7EAaHxBWtFXhF4dcUBhwrPpQ7qbHYRkbcZNLlWh++GrNtAUEKwPl7iG5p3uriMmrAA3N+VpOUpcSlmZ/5qpO6VyCW+1n/ZjL0QqbvoiPPLWvsWxsqo4JdDFsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752112194; c=relaxed/simple;
	bh=hlkalpR9fPtYHi2b4fAuXmoJGDqv8bU9fOo+IyLhauE=;
	h=To:Subject:From:Message-Id:Date; b=g5x5Xj6dt00W8VHYGyA+GujLz53g9oAQEfzZqkPVsW9jIjVIMvuBnCnPp3UKw+msoHfmR1qfIqOwCfVF6fYwczzlPuUMRAYgjAHfjRAvnUffNbtnDMj8YpHqVdi+tTjIiPgaG5KMHo7laNMec+g7zHHWFx8qmmSv/OeQRWaILdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+bfFAoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+bfFAoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ED3C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752112193;
	bh=hlkalpR9fPtYHi2b4fAuXmoJGDqv8bU9fOo+IyLhauE=;
	h=To:Subject:From:Date:From;
	b=p+bfFAoyFkPx91uInhsoLQP8R4Ysdj+OqVnclUsnfoJLIfI2cgUR3l80JsLcv54yR
	 ga7l2mafevRtmO/Brb8QKe2Fg3Txw7PniC/seYA//vNk2aab+DTBAwUVUcZs6I7+Tw
	 ulqJFmJ7UUkbSkNR0SJRx5cpIQP99gDphoRikEZZ9D8Tb/OWHTNfIKkPcewMKxaeyV
	 5XIA48jHKD7toFPoC7lHrjApp4D5n++N/EMz+LPGQxoFDgIdgMQ8UZMXKvQQWjftsP
	 UI/4PcLkZEDozh+tvhbr5tVv/Zitbo7G0IXoVTOsfYtwAGpsFrrfRaQcV/aU45GP0V
	 zLvEEX2yyx2lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA10C83F10
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211219357.1781.15481459688678153724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df912ff3384010517485bf3a19ef3f8748f877991e91b6f586cab95351524923
Date: Thu, 10 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752112193
