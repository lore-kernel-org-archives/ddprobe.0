Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104DC262FEC
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774774494; cv=none; b=aUYaabXw7wHoRLFN9LnVxrTp39YGrhH7Ln7qAkQo7hOvAjmMZ3eI1Wbi4/azxcoAEP/TVvtl6GUhfcISYuagi/rQ6OdoTAPcDJsR5nQZ3ZWP8cTQjIvDt0s0EVlEx9U7zqaRaSuAXgS3phUQTe09eXcNU8uv6x9gcNOy9P50XEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774774494; c=relaxed/simple;
	bh=ZRnYdiph0ps/h0fOTODQoTbP19/nFuBQodrfUkwxkiI=;
	h=To:Subject:From:Message-Id:Date; b=YwT574lHtqqXGbhI+SzSjB6k3AcG75aSIZLZEFAlEWH6zJWLGGl1hJg6AcUS8bh/Y4/b9+vjATiZKTZa3PD6sOAy1XvjA4fnrhk1OyVu9ubb97GKiBo//K4lR3CjSMarMix8Eu6ztLsecDljFfHsWiDjOVCTZdLgFiKypBr0j2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8L0mkGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8L0mkGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2495C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774774493;
	bh=ZRnYdiph0ps/h0fOTODQoTbP19/nFuBQodrfUkwxkiI=;
	h=To:Subject:From:Date:From;
	b=o8L0mkGCNw6WXETkC3GbXiiuZ3azWY15/px9LkA+U0pWOxnAnKj9CYs/ax2gzsU1a
	 gKI/b4tNnOa9giBTDrbDoFDOD7lIXmRoS/Zxwnlkb1EfzCVPLolIL4SVo0Fq7/mpSi
	 miegkzpBxTEbXgRjacicJq61dTLoBOA+qTazql/SE07AKl6L0i4fdFnoP7CqISSd8e
	 zQjsygkHZ4OJFvgSNcV9JdZattlVYTZ95adrZ159sW7SmPlsqptde9MtEs8ZXb+xbg
	 dLvFCgplph8LfrWwSaBMCrO2drzfT1XvRrbcQln0ZlbiXmSGTA44QWlf+TF7B9/rx3
	 Mm88OF8vTNoVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91384F3D5F4
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477449358.18321.16160294556481655231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14db8604cfd0cab63a9b5aa6a382dd426dbe00feab62eaa389b6e56d4b71ca3a
Date: Sun, 29 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774774493
