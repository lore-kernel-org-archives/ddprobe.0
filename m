Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BFC3446AF
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770792894; cv=none; b=a5Uk5Pf/djLTpn+doSJpVgo1FTSbdi7rJmV1QWbB+vaNjwb2KgZBjQWhcY0ym3V5rblhefCI3dRMGRGHPXKWGpFx0LjVdFmh76wTVhFDFsfkbhIGj8sE0TK00k+Ofuytkblmhua3NzD/Dj6FlhTzDpa7yO+bLuYggqShw5PuDLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770792894; c=relaxed/simple;
	bh=S68VWSJf1aHb5OQH/OqPQrdPvauo3XmLkKlLpvsW6D8=;
	h=To:Subject:From:Message-Id:Date; b=fobM7tga+I+dNkojb2ur7R+hmJLWEqr0O06aIJOBj0oQ0Ag6o0jR9qi6TNmcy6GwmWo8dAYu4AVHbCCHu2alxM2SzqHCQcDOMZMTC0+5dSzEAe+m0L6U97WxBx+SYOXV/Zzzs7NaejX+YMGDfOHcK071iz5hGzw+6QOjEFqYRlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbAVZ4Pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbAVZ4Pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47B3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770792893;
	bh=S68VWSJf1aHb5OQH/OqPQrdPvauo3XmLkKlLpvsW6D8=;
	h=To:Subject:From:Date:From;
	b=nbAVZ4PatPMaHo44HFMIRG9dNntHYt5f2vOB47Udm7tK5S4bWWvagH3VldYByjnNb
	 tQfCzlLFq0d8VNosD9OMeDwdOautXuZzem1bIpHiXCcFuTQ92X2aVhHHZzKanIT+VR
	 ZO6dUn+4Ua+QHsxFJo70AvxRQ9YnbKPV3v8Ns4GA1VVIAL8IcHbe8fxGzAZajJ+nuA
	 ZCqPTRDl3CcErr2SaD7ekmz7E7ZH6pxwWsjvPYGKDp7Ok85KeSkqVHGAI7bQeAedWf
	 0+nhTQ2K4K6/Cj3T3gZ/aBoF88vfhqUay+H7YItgvWlGo89nqmdV+GkP7QMVdUc0OB
	 PH8u83HjSN9Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9CC2EB596A
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079289376.26301.12465096704814970327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ffa7be3732a512075bf9755c008637fcf4140a2baa1871ba078d8d801a1e873
Date: Wed, 11 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770792893
